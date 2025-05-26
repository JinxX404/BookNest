from typing import List, Dict, Any, Optional, Tuple
from django.db import models
from django.contrib.postgres.search import SearchVector, SearchQuery, SearchRank
from django.core.paginator import Paginator
from books.models import Book, Author, BookGenre
from books.utils.external_api_clients import search_external_apis
from books.utils.book_service import save_external_book
import logging

# Configure logging
logger = logging.getLogger(__name__)


class PostgreSQLSearchService:
    """
    PostgreSQL-based search service using full-text search capabilities.
    Provides search functionality with filtering, pagination, and external API fallback.
    """
    
    @staticmethod
    def search_books(query: str, page: int = 1, page_size: int = 10, 
                    filters: Optional[Dict[str, Any]] = None) -> Tuple[List[Dict[str, Any]], int]:
        """
        Search for books using PostgreSQL full-text search with fallback to external APIs.
        
        Args:
            query: Search query string
            page: Page number (1-indexed)
            page_size: Number of results per page
            filters: Dictionary of filters to apply
            
        Returns:
            Tuple of (list of book dictionaries, total count)
        """
        if not query.strip():
            return PostgreSQLSearchService._get_all_books(page, page_size, filters)
        
        # First try local database search
        books, total_count = PostgreSQLSearchService._search_local_database(query, page, page_size, filters)
        
        if books:
            logger.info(f"Found {len(books)} books in local database for query: {query}")
            return books, total_count
        
        # If no local results, try external APIs
        logger.info(f"No local results for query: {query}, searching external APIs")
        return PostgreSQLSearchService._search_external_apis(query, page, page_size)
    
    @staticmethod
    def _search_local_database(query: str, page: int, page_size: int, 
                              filters: Optional[Dict[str, Any]] = None) -> Tuple[List[Dict[str, Any]], int]:
        """
        Search books in the local PostgreSQL database using full-text search.
        """
        try:
            # Create search vectors for different fields with different weights
            search_vector = (
                SearchVector('title', weight='A') +  # Highest weight for title
                SearchVector('description', weight='B') +  # Medium weight for description
                SearchVector('authors__name', weight='A')  # High weight for author names
            )
            
            # Create search query
            search_query = SearchQuery(query)
            
            # Base queryset with search
            queryset = Book.objects.annotate(
                search=search_vector,
                rank=SearchRank(search_vector, search_query)
            ).filter(
                search=search_query
            ).select_related().prefetch_related('authors', 'genres')
            
            # Apply additional filters
            if filters:
                queryset = PostgreSQLSearchService._apply_filters(queryset, filters)
            
            # Order by relevance (rank) and then by title
            queryset = queryset.order_by('-rank', 'title')
            
            # Get total count
            total_count = queryset.count()
            
            # Apply pagination
            paginator = Paginator(queryset, page_size)
            page_obj = paginator.get_page(page)
            
            # Convert to list of dictionaries
            books = [PostgreSQLSearchService._book_to_dict(book) for book in page_obj.object_list]
            
            return books, total_count
            
        except Exception as e:
            logger.error(f"Database search error: {e}")
            return [], 0
    
    @staticmethod
    def _get_all_books(page: int, page_size: int, filters: Optional[Dict[str, Any]] = None) -> Tuple[List[Dict[str, Any]], int]:
        """
        Get all books with optional filtering when no search query is provided.
        """
        try:
            queryset = Book.objects.select_related().prefetch_related('authors', 'genres')
            
            # Apply filters
            if filters:
                queryset = PostgreSQLSearchService._apply_filters(queryset, filters)
            
            # Order by average rating and title
            queryset = queryset.order_by('-average_rate', 'title')
            
            # Get total count
            total_count = queryset.count()
            
            # Apply pagination
            paginator = Paginator(queryset, page_size)
            page_obj = paginator.get_page(page)
            
            # Convert to list of dictionaries
            books = [PostgreSQLSearchService._book_to_dict(book) for book in page_obj.object_list]
            
            return books, total_count
            
        except Exception as e:
            logger.error(f"Error getting all books: {e}")
            return [], 0
    
    @staticmethod
    def _apply_filters(queryset, filters: Dict[str, Any]):
        """
        Apply filters to the queryset.
        """
        # Filter by genres
        if 'genres' in filters and filters['genres']:
            queryset = queryset.filter(genres__genre__in=filters['genres'])
        
        # Filter by minimum rating
        if 'min_rating' in filters and filters['min_rating'] is not None:
            queryset = queryset.filter(average_rate__gte=filters['min_rating'])
        
        # Filter by publication date range
        if 'pub_date_from' in filters and filters['pub_date_from']:
            queryset = queryset.filter(publication_date__gte=filters['pub_date_from'])
        if 'pub_date_to' in filters and filters['pub_date_to']:
            queryset = queryset.filter(publication_date__lte=filters['pub_date_to'])
        
        # Filter by author
        if 'author' in filters and filters['author']:
            queryset = queryset.filter(authors__name__icontains=filters['author'])
        
        # Filter by number of pages
        if 'num_pages' in filters and filters['num_pages']:
            queryset = queryset.filter(number_of_pages__gte=filters['num_pages'])
        
        return queryset.distinct()
    
    @staticmethod
    def _search_external_apis(query: str, page: int, page_size: int) -> Tuple[List[Dict[str, Any]], int]:
        """
        Search external APIs and save results to database.
        """
        try:
            # Search external APIs
            external_books = search_external_apis(query, max_retries=3, timeout=15)
            
            if external_books:
                # Save external books to database
                successful_saves = 0
                for book_data in external_books:
                    try:
                        result = save_external_book(book_data)
                        if result:
                            successful_saves += 1
                    except Exception as e:
                        logger.error(f"Error saving external book: {e}")
                
                logger.info(f"Successfully saved {successful_saves} out of {len(external_books)} books")
            
            # Apply pagination to external results
            start = (page - 1) * page_size
            end = start + page_size
            paginated_books = external_books[start:end]
            
            return paginated_books, len(external_books)
            
        except Exception as e:
            logger.error(f"External API search error: {e}")
            return [], 0
    
    @staticmethod
    def _book_to_dict(book) -> Dict[str, Any]:
        """
        Convert a Book model instance to a dictionary.
        """
        return {
            'isbn13': book.isbn13,
            'isbn': book.isbn,
            'title': book.title,
            'authors': [author.name for author in book.authors.all()],
            'cover_img': book.cover_img,
            'publication_date': book.publication_date,
            'number_of_pages': book.number_of_pages,
            'description': book.description,
            'average_rate': float(book.average_rate) if book.average_rate else None,
            'genres': [genre.genre for genre in book.genres.all()],
            'source': 'database'
        }
    
    @staticmethod
    def get_suggestions(query: str, limit: int = 5) -> List[Dict[str, Any]]:
        """
        Get book title suggestions based on partial query.
        """
        if not query.strip():
            return []
        
        try:
            # Search for books with titles that start with the query
            books = Book.objects.filter(
                title__istartswith=query
            ).select_related().prefetch_related('authors')[:limit]
            
            suggestions = []
            for book in books:
                suggestions.append({
                    'isbn13': book.isbn13,
                    'title': book.title,
                    'authors': [author.name for author in book.authors.all()],
                    'cover_img': book.cover_img
                })
            
            return suggestions
            
        except Exception as e:
            logger.error(f"Error getting suggestions: {e}")
            return []