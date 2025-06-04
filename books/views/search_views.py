from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from rest_framework.throttling import UserRateThrottle
from django.core.cache import cache
from django.conf import settings
from books.models import Book
from books.utils.search_service import PostgreSQLSearchService
from books.utils.external_api_clients import search_external_apis
from books.utils.book_normalizer import BookNormalizer
from books.logging_config import logger
from datetime import datetime
from typing import Dict, Any, Optional
import hashlib

class SearchRateThrottle(UserRateThrottle):
    """Custom rate throttle for search requests."""
    rate = '100/hour'  # Adjust based on your needs

class BookSearchAPIView(APIView):
    """
    API view for searching books using PostgreSQL full-text search.
    Supports filtering, pagination, and fallback to external APIs.
    """
    throttle_classes = [SearchRateThrottle]
    
    def _validate_search_params(self, request) -> Optional[Dict[str, Any]]:
        """
        Validate and normalize search parameters.
        Returns None if validation fails, otherwise returns normalized parameters.
        """
        try:
            # Get query parameter
            query = request.GET.get('q', '').strip()
            if not query:
                return None
            
            # Get pagination parameters
            try:
                page = max(1, int(request.GET.get('page', 1)))
                page_size = min(max(1, int(request.GET.get('page_size', 10))), 50)
            except ValueError:
                return None
            
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
                    return None
            
            # Publication date filters
            pub_date_from = request.GET.get('pub_date_from')
            if pub_date_from:
                try:
                    datetime.strptime(pub_date_from, '%Y-%m-%d')
                    filters['pub_date_from'] = pub_date_from
                except ValueError:
                    return None
            
            pub_date_to = request.GET.get('pub_date_to')
            if pub_date_to:
                try:
                    datetime.strptime(pub_date_to, '%Y-%m-%d')
                    filters['pub_date_to'] = pub_date_to
                except ValueError:
                    return None
            
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
                    return None
            
            return {
                'query': query,
                'page': page,
                'page_size': page_size,
                'filters': filters,
                'include_external': request.GET.get('include_external', 'false').lower() == 'true'
            }
            
        except Exception as e:
            logger.error(f"Error validating search parameters: {e}")
            return None
    
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
            # Validate search parameters
            params = self._validate_search_params(request)
            if not params:
                return Response(
                    {'error': 'Invalid search parameters'},
                    status=status.HTTP_400_BAD_REQUEST
                )
            
            # Generate cache key
            cache_key = f"{settings.CACHE_KEY_PREFIX}:search:{hashlib.md5(str(params).encode()).hexdigest()}"
            
            # Try to get from cache
            cached_response = cache.get(cache_key)
            if cached_response:
                logger.info(f"Cache hit for search query: {params['query']}")
                return Response(cached_response)
            
            # Search using the service
            books, total_count = PostgreSQLSearchService.search_books(
                query=params['query'],
                page=params['page'],
                page_size=params['page_size'],
                filters=params['filters']
            )
            
            # Calculate pagination info
            total_pages = (total_count + params['page_size'] - 1) // params['page_size']
            has_next = params['page'] < total_pages
            has_previous = params['page'] > 1
            
            # Prepare response
            response_data = {
                'query': params['query'],
                'results': books,
                'pagination': {
                    'current_page': params['page'],
                    'page_size': params['page_size'],
                    'total_count': total_count,
                    'total_pages': total_pages,
                    'has_next': has_next,
                    'has_previous': has_previous
                },
                'filters_applied': params['filters'],
                'include_external': params['include_external']
            }
            
            # Cache the response
            cache.set(cache_key, response_data, settings.CACHE_TTL)
            
            logger.info(f"Search completed for query: '{params['query']}', returned {len(books)} results")
            
            return Response(response_data, status=status.HTTP_200_OK)
            
        except Exception as e:
            logger.error(f"Search API error: {e}", exc_info=True)
            return Response(
                {'error': 'An error occurred while searching. Please try again.'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR
            )