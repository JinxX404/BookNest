from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from books.models import Book
from books.utils.search_service import PostgreSQLSearchService
from books.utils.external_api_clients import search_external_apis
from books.utils.book_normalizer import BookNormalizer
from books.logging_config import logger



class BookSearchAPIView(APIView):
    """
    API view for searching books using PostgreSQL full-text search.
    Supports filtering, pagination, and fallback to external APIs.
    """
    
    def get(self, request):
        """
        Handle GET requests for book search.
        
        Query parameters:
        - q: Search query (required)
        - page: Page number (default: 1)
        - page_size: Number of results per page (default: 10, max: 50)
        - genres: Comma-separated list of genres to filter by
        - min_rating: Minimum rating filter
        - pub_date_from: Publication date from (YYYY-MM-DD)
        - pub_date_to: Publication date to (YYYY-MM-DD)
        - author: Author name filter
        - num_pages: Minimum number of pages
        - include_external: Whether to include results from external APIs (default: false)
        """
        try:
            # Get query parameter
            query = request.GET.get('q', '').strip()
            if not query:
                return Response(
                    {'error': 'Search query parameter "q" is required'},
                    status=status.HTTP_400_BAD_REQUEST
                )
            
            # Get pagination parameters
            try:
                page = int(request.GET.get('page', 1))
                page_size = min(int(request.GET.get('page_size', 10)), 50)  # Max 50 per page
            except ValueError:
                return Response(
                    {'error': 'Invalid page or page_size parameter'},
                    status=status.HTTP_400_BAD_REQUEST
                )
            
            # Check if external results should be included
            include_external = request.GET.get('include_external', 'false').lower() == 'true'
            
            # Build filters dictionary
            filters = {}
            
            # Genre filter
            genres = request.GET.get('genres')
            if genres:
                filters['genres'] = [genre.strip() for genre in genres.split(',') if genre.strip()]
            
            # Rating filter
            min_rating = request.GET.get('min_rating')
            if min_rating:
                try:
                    filters['min_rating'] = float(min_rating)
                except ValueError:
                    return Response(
                        {'error': 'Invalid min_rating parameter'},
                        status=status.HTTP_400_BAD_REQUEST
                    )
            
            # Publication date filters
            pub_date_from = request.GET.get('pub_date_from')
            if pub_date_from:
                filters['pub_date_from'] = pub_date_from
            
            pub_date_to = request.GET.get('pub_date_to')
            if pub_date_to:
                filters['pub_date_to'] = pub_date_to
            
            # Author filter
            author = request.GET.get('author')
            if author:
                filters['author'] = author.strip()
            
            # Number of pages filter
            num_pages = request.GET.get('num_pages')
            if num_pages:
                try:
                    filters['num_pages'] = int(num_pages)
                except ValueError:
                    return Response(
                        {'error': 'Invalid num_pages parameter'},
                        status=status.HTTP_400_BAD_REQUEST
                    )
            
            # First search local database
            local_books, local_count = self._search_local_database(query, page, page_size, filters)
            
            # Normalize local results
            normalized_local_books = []
            for book in local_books:
                normalized_book = BookNormalizer.normalize(book, 'database')
                normalized_local_books.append(normalized_book)
                
            # Log local results
            logger.info(f"Local search for '{query}' found {local_count} results")
            
            # Check if we need to fetch external results
            external_books = []
            if include_external or local_count < page_size:
                external_books = self._search_external_apis(query)
                logger.info(f"External search for '{query}' found {len(external_books)} results")
            
            # Combine results, prioritizing local results
            combined_results = normalized_local_books.copy()
            
            # Add external results if needed
            if external_books:
                # Keep track of ISBNs to avoid duplicates
                seen_isbns = {book.get('isbn13') for book in normalized_local_books if book.get('isbn13')}
                
                for book in external_books:
                    # Skip books already in local results
                    if book.get('isbn13') and book.get('isbn13') in seen_isbns:
                        continue
                    
                    # Normalize external book data
                    normalized_book = BookNormalizer.normalize(book, book.get('source', 'external'))
                    
                    # Add to results if we have space
                    if len(combined_results) < page_size:
                        combined_results.append(normalized_book)
                        seen_isbns.add(normalized_book.get('isbn13'))
            
            # Calculate total count
            total_count = local_count
            if include_external:
                # Add external books that aren't duplicates
                external_unique = sum(1 for book in external_books 
                                    if book.get('isbn13') and book.get('isbn13') not in 
                                    {b.get('isbn13') for b in local_books if b.get('isbn13')})
                total_count += external_unique
            
            # Calculate pagination info
            total_pages = (total_count + page_size - 1) // page_size
            has_next = page < total_pages
            has_previous = page > 1
            
            # Prepare response
            response_data = {
                'query': query,
                'results': combined_results,
                'pagination': {
                    'current_page': page,
                    'page_size': page_size,
                    'total_count': total_count,
                    'total_pages': total_pages,
                    'has_next': has_next,
                    'has_previous': has_previous
                },
                'filters_applied': filters,
                'include_external': include_external
            }
            
            logger.info(f"Search completed for query: '{query}', returned {len(combined_results)} results")
            return Response(response_data, status=status.HTTP_200_OK)
            
        except Exception as e:
            logger.error(f"Search API error: {e}", exc_info=True)
            return Response(
                {'error': 'An error occurred while searching. Please try again.'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR
            )
    
    def _search_local_database(self, query, page, page_size, filters):
        """
        Search for books in the local database.
        """
        try:
            # Use the existing search service
            books, total_count = PostgreSQLSearchService._search_local_database(
                query=query,
                page=page,
                page_size=page_size,
                filters=filters if filters else None
            )
            
            return books, total_count
        except Exception as e:
            logger.error(f"Error searching local database: {e}")
            return [], 0
    
    def _search_external_apis(self, query):
        """
        Search for books in external APIs.
        """
        try:
            # Use the existing external API search function
            external_books = search_external_apis(query, max_retries=2, timeout=15)
            return external_books
        except Exception as e:
            logger.error(f"Error searching external APIs: {e}")
            return []