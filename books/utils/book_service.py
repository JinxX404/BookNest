from typing import Dict, List, Any, Optional
import logging
import requests
from django.db import transaction
from django.utils import timezone
from books.models import Book, Author, BookAuthor, BookGenre
from books.utils.external_api_clients import search_external_apis

# Configure logging
logger = logging.getLogger(__name__)


# def get_books_by_ids(book_ids: List[str]) -> List[Dict[str, Any]]:
#     """Retrieve full book details from database using Elasticsearch IDs"""
#     try:
#         books = Book.objects.filter(isbn13__in=book_ids)
#         return [{
#             'id': str(book.id),
#             'title': book.title,
#             'authors': [author.name for author in book.authors.all()],
#             'cover_img': book.cover_img,
#             'description': book.description
#         } for book in books]
#     except Exception as e:
#         logger.error(f"Error fetching books by IDs: {e}")
#         return []


def search_books(query, page=1, page_size=10, filters=None):
    """
    Search for books using the new PostgreSQL-based search service.
    This function is kept for backward compatibility.
    
    Args:
        query (str): Search query
        page (int): Page number (1-indexed)
        page_size (int): Number of results per page
        filters (dict): Optional filters for the search
    
    Returns:
        tuple: (list of books, total count)
    """
    from books.utils.search_service import PostgreSQLSearchService
    return PostgreSQLSearchService.search_books(query, page, page_size, filters)


@transaction.atomic
def save_external_book(book_data: Dict[str, Any]) -> Optional[Book]:
    """
    Save a book from external API to the database with improved data integrity.
    
    Args:
        book_data: Book data from external API
        
    Returns:
        Created Book instance or None if failed
    """
    # Validate required fields before attempting to save
    if not book_data.get('isbn13') or not book_data.get('title'):
        logger.warning("Cannot save book: missing required fields (isbn13 or title)")
        return None
    
    # Check for network connectivity issues with cover image URL
    if book_data.get('cover_img'):
        from books.utils.external_api_clients import check_network_connectivity
        if not check_network_connectivity():
            # If network is down, set cover_img to None to avoid connection errors
            logger.warning(f"Network connectivity issue detected. Setting cover_img to None for book {book_data['title']}")
            book_data['cover_img'] = None
        
    try:
        # Check if book already exists - use get_or_none pattern to avoid exceptions
        existing_book = Book.objects.filter(isbn13=book_data['isbn13']).first()
        if existing_book:
            logger.info(f"Book with ISBN13 {book_data['isbn13']} already exists")
            return existing_book  # Return existing book instead of None to allow further processing
        
        # Create book with cleaned data
        book = Book(
            isbn13=book_data['isbn13'],
            isbn=book_data.get('isbn'),
            title=book_data['title'].strip(),  # Ensure title is stripped
            cover_img=book_data.get('cover_img'),
            description=book_data.get('description', '').strip(),  # Clean description
            number_of_pages=book_data.get('number_of_pages'),
            average_rate=None  # No ratings yet
        )
        
        # Handle publication date (might be just a year from some APIs)
        try:
            pub_date = book_data.get('publication_date')
            if pub_date and isinstance(pub_date, int):
                from datetime import date
                book.publication_date = date(pub_date, 1, 1)  # Default to January 1st
            elif pub_date and isinstance(pub_date, str):
                # Try to parse string date in various formats
                from dateutil.parser import parse
                try:
                    book.publication_date = parse(pub_date).date()
                except (ValueError, TypeError):
                    # If parsing fails, try to extract just the year
                    import re
                    year_match = re.search(r'\d{4}', pub_date)
                    if year_match:
                        from datetime import date
                        book.publication_date = date(int(year_match.group()), 1, 1)
                    else:
                        book.publication_date = None
            else:
                book.publication_date = pub_date
        except Exception as e:
            logger.warning(f"Error processing publication date: {e}")
            book.publication_date = None
        
        book.save()
        
        logger.info(f"Book saved: {book.title} (ISBN: {book.isbn13})")
        
        # Process authors
        authors_added = False
        if book_data.get('authors'):
            for author_data in book_data.get('authors', []):
                try:
                    # Handle both string author names and author dictionaries
                    if isinstance(author_data, str):
                        author_name = author_data.strip()
                        if not author_name:
                            continue
                            
                        # Normalize author name (Title Case)
                        author_name = ' '.join(word.capitalize() for word in author_name.split())
                        author_bio = None
                        author_birth_date = None
                        author_data_quality = 'minimal'
                    else:
                        # Extract author details from dictionary
                        author_name = author_data.get('name', '').strip()
                        if not author_name:
                            continue
                            
                        # Normalize author name (Title Case)
                        author_name = ' '.join(word.capitalize() for word in author_name.split())
                        author_bio = author_data.get('bio', '')
                        author_birth_date = author_data.get('birth_date')
                        
                        # Determine data quality
                        if author_bio and author_birth_date:
                            author_data_quality = 'complete'
                        elif author_bio or author_birth_date:
                            author_data_quality = 'partial'
                        else:
                            author_data_quality = 'minimal'
                    
                    # Check if author already exists (case-insensitive search)
                    similar_authors = Author.objects.filter(name__iexact=author_name)
                    
                    if similar_authors.exists():
                        # Use existing author
                        author = similar_authors.first()
                        
                        # Update author data if current data is better quality
                        update_fields = []
                        
                        # Only update fields if they're empty in the database but we have data
                        if (author.bio is None or author.bio == '') and author_bio:
                            author.bio = author_bio
                            update_fields.append('bio')
                            
                            # Update data quality if needed
                            if author.data_quality == 'minimal':
                                author.data_quality = 'partial' if not author.date_of_birth else 'complete'
                                update_fields.append('data_quality')
                            
                        if author.date_of_birth is None and author_birth_date:
                            author.date_of_birth = author_birth_date
                            update_fields.append('date_of_birth')
                            
                            # Update data quality if needed
                            if author.data_quality == 'minimal':
                                author.data_quality = 'partial' if not author.bio else 'complete'
                                update_fields.append('data_quality')
                            
                        if update_fields:
                            author.last_updated = timezone.now()
                            update_fields.append('last_updated')
                            author.save(update_fields=update_fields)
                    else:
                        # Create new author with normalized data
                        author = Author.objects.create(
                            name=author_name,
                            bio=author_bio or '',
                            date_of_birth=author_birth_date,
                            number_of_books=0,  # Will be incremented by BookAuthor.save()
                            data_quality=author_data_quality,
                            last_updated=timezone.now()
                        )
                    
                    # Create book-author relationship (this will automatically increment author.number_of_books)
                    BookAuthor.objects.create(book=book, author=author)
                    authors_added = True
                    
                except Exception as e:
                    logger.warning(f"Error adding author '{author_name if isinstance(author_data, str) else author_data.get('name', '')}' to book: {e}")
                    # Continue with other authors even if one fails
        
        # If no authors were added, create a default author
        if not authors_added:
            default_author, _ = Author.objects.get_or_create(
                name="Unknown Author",
                defaults={
                    'bio': "No biography available",
                    'number_of_books': 0,  # Will be incremented by BookAuthor.save()
                    'data_quality': 'minimal',
                    'last_updated': timezone.now()
                }
            )
            BookAuthor.objects.create(book=book, author=default_author)
            logger.warning(f"No valid authors provided for book {book.isbn13}, using default author")
        
        # Process genres
        genres_added = False
        if book_data.get('genres'):
            for genre_name in book_data.get('genres', []):
                try:
                    if genre_name and isinstance(genre_name, str):
                        # Normalize genre name (trim whitespace, capitalize first letter)
                        genre_name = genre_name.strip().title()
                        if genre_name:
                            # Handle common genre variations and abbreviations
                            genre_mapping = {
                                "Sci-Fi": "Science Fiction",
                                "Scifi": "Science Fiction",
                                "SF": "Science Fiction",
                                "Sci Fi": "Science Fiction",
                                "YA": "Young Adult",
                                "Historical": "Historical Fiction",
                                "Hist Fic": "Historical Fiction",
                                "Hist-Fic": "Historical Fiction",
                                "Histfic": "Historical Fiction",
                                "Lit": "Literature",
                                "Classic Lit": "Classic Literature",
                                "Classics": "Classic Literature",
                                "Contemp": "Contemporary",
                                "Contemp Fic": "Contemporary Fiction",
                                "Contemp Fiction": "Contemporary Fiction",
                                "Nonfic": "Non-Fiction",
                                "Non Fic": "Non-Fiction",
                                "Non Fiction": "Non-Fiction",
                            }
                            
                            # Apply mapping if genre is in the dictionary
                            if genre_name in genre_mapping:
                                genre_name = genre_mapping[genre_name]
                            
                            # Get or create genre
                            genre, _ = Genre.objects.get_or_create(
                                name__iexact=genre_name,
                                defaults={'name': genre_name}
                            )
                            
                            # Create book-genre relationship (using the ensure_book_has_genre method)
                            try:
                                BookGenre.objects.create(book=book, genre=genre)
                                genres_added = True
                            except Exception as e:
                                # Handle potential duplicate key error
                                if 'unique constraint' not in str(e).lower():
                                    raise
                                # If it's a duplicate, just continue
                except Exception as e:
                    logger.warning(f"Error adding genre '{genre_name}' to book: {e}")
                    # Continue with other genres even if one fails
        
        # If no genres were added, add default genre
        if not genres_added:
            default_genre, _ = Genre.objects.get_or_create(
                name="Unknown Genre",
                defaults={'name': "Unknown Genre"}
            )
            try:
                BookGenre.objects.create(book=book, genre=default_genre)
                logger.warning(f"No valid genres provided for book {book.isbn13}, using default genre")
            except Exception as e:
                # Handle potential duplicate key error
                if 'unique constraint' not in str(e).lower():
                    logger.error(f"Error adding default genre to book: {e}")
        
        # Ensure book has at least one genre
        BookGenre.ensure_book_has_genre(book)
        
        return book
    
    except Exception as e:
        logger.error(f"Error saving external book: {e}", exc_info=True)
        # Check for specific error types and provide more context
        if 'connection' in str(e).lower():
            logger.error("Network connection error while saving book - check internet connectivity")
        return None