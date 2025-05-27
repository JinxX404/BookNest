# BookNest API Documentation

Based on my analysis of the BookNest Django REST API project, here's a comprehensive API documentation covering all the endpoints, data structures, and functionality.

## Project Overview

BookNest is a comprehensive book recommendation and social reading platform built with Django REST Framework. The API provides functionality for user management, book cataloging, reviews, ratings, social following, notifications, and AI-powered recommendations.

## Base URL Structure

All API endpoints are prefixed with `/api/` and the project includes automatic API documentation via drf-spectacular:
- **API Schema**: `/api/schema/`
- **Swagger UI**: `/api/swagger/`
- **ReDoc**: `/api/redoc/`

## Authentication

The API uses JWT (JSON Web Token) authentication with the following endpoints:

### Authentication Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| POST | `/api/users/register/` | User registration |
| POST | `/api/users/login/` | User login |
| POST | `/api/users/logout/` | User logout |
| GET | `/api/users/user/` | Get current user details |
| POST | `/api/users/token/verify/` | Verify JWT token |
| POST | `/api/users/token/refresh/` | Refresh JWT token |

## Core API Modules

### 1. Users App (`/api/users/`)

#### Profile Management

| Method | Endpoint | Description | Auth Required |
|--------|----------|-------------|---------------|
| GET | `/api/users/profile/` | List all profiles | ✓ |
| POST | `/api/users/profile/` | Create user profile | ✓ |
| GET | `/api/users/profile/{id}/` | Get specific profile | ✓ |
| PUT/PATCH | `/api/users/profile/{id}/` | Update profile | ✓ (Owner only) |
| DELETE | `/api/users/profile/{id}/` | Delete profile | ✓ (Owner only) |
| GET | `/api/users/profile/me/` | Get current user's profile | ✓ |
| POST | `/api/users/profiles/upload-picture/` | Upload profile picture | ✓ |

#### Profile Data Structure
```json
{
  "id": 1,
  "username": "john_doe",
  "email": "john@example.com",
  "profile_pic": "https://cloudinary.com/image.jpg",
  "bio": "Book lover and avid reader",
  "profile_type": "REGULAR",
  "settings": {},
  "interests": [
    {"interest": "Science Fiction"}
  ],
  "social_links": [
    {"platform": "twitter", "url": "https://twitter.com/johndoe"}
  ],
  "created_at": "2024-01-01T00:00:00Z",
  "updated_at": "2024-01-01T00:00:00Z"
}
```

### 2. Books App (`/api/books/`)

#### Book Management

| Method | Endpoint | Description | Auth Required |
|--------|----------|-------------|---------------|
| GET | `/api/books/` | List books with filtering | ❌ |
| POST | `/api/books/` | Create new book | ✓ (Admin) |
| GET | `/api/books/{id}/` | Get book details | ❌ |
| PUT/PATCH | `/api/books/{id}/` | Update book | ✓ (Admin) |
| DELETE | `/api/books/{id}/` | Delete book | ✓ (Admin) |
| GET | `/api/books/search/` | Search books | ❌ |
| GET | `/api/books/suggestions/` | Get book suggestions | ❌ |

#### Author Management

| Method | Endpoint | Description | Auth Required |
|--------|----------|-------------|---------------|
| GET | `/api/books/authors/` | List authors | ❌ |
| POST | `/api/books/authors/` | Create author | ✓ (Admin) |
| GET | `/api/books/authors/{id}/` | Get author details | ❌ |
| PUT/PATCH | `/api/books/authors/{id}/` | Update author | ✓ (Admin) |
| DELETE | `/api/books/authors/{id}/` | Delete author | ✓ (Admin) |
| GET | `/api/books/authors/{id}/books/` | Get author's books | ❌ |

#### Book Data Structure
```json
{
  "isbn13": "9781234567890",
  "isbn": "1234567890",
  "title": "The Great Book",
  "description": "An amazing story...",
  "cover_img": "https://example.com/cover.jpg",
  "publication_date": "2024-01-01",
  "number_of_pages": 350,
  "number_of_ratings": 150,
  "average_rate": 4.2,
  "authors": [
    {
      "author_id": 1,
      "name": "John Author",
      "bio": "Famous writer...",
      "number_of_books": 5
    }
  ],
  "genres": ["Fiction", "Drama"],
  "reviews_count": 45
}
```

#### Reviews and Ratings

| Method | Endpoint | Description | Auth Required |
|--------|----------|-------------|---------------|
| GET | `/api/books/reviews/` | List all reviews | ❌ |
| POST | `/api/books/reviews/` | Create review | ✓ |
| GET | `/api/books/reviews/{id}/` | Get review details | ❌ |
| PUT/PATCH | `/api/books/reviews/{id}/` | Update review | ✓ (Owner) |
| DELETE | `/api/books/reviews/{id}/` | Delete review | ✓ (Owner) |
| GET | `/api/books/reviews/top/` | Get top-rated reviews | ❌ |
| POST | `/api/books/reviews/{id}/upvote/` | Upvote review | ✓ |
| POST | `/api/books/reviews/{id}/downvote/` | Downvote review | ✓ |
| GET | `/api/books/ratings/` | List ratings | ❌ |
| POST | `/api/books/ratings/` | Create/update rating | ✓ |
| GET | `/api/books/ratings/book/{book_id}/` | Get book ratings | ❌ |
| GET | `/api/books/ratings/user/{user_id}/` | Get user's ratings | ❌ |

#### Reading Lists

| Method | Endpoint | Description | Auth Required |
|--------|----------|-------------|---------------|
| GET | `/api/books/reading-lists/` | List reading lists | ✓ |
| POST | `/api/books/reading-lists/` | Create reading list | ✓ |
| GET | `/api/books/reading-lists/{id}/` | Get reading list | ✓ |
| PUT/PATCH | `/api/books/reading-lists/{id}/` | Update reading list | ✓ (Owner) |
| DELETE | `/api/books/reading-lists/{id}/` | Delete reading list | ✓ (Owner) |
| POST | `/api/books/reading-lists/{id}/add-book/` | Add book to list | ✓ (Owner) |
| DELETE | `/api/books/reading-lists/{id}/remove-book/` | Remove book from list | ✓ (Owner) |

### 3. Follows App (`/api/follow/`)

#### Social Following

| Method | Endpoint | Description | Auth Required |
|--------|----------|-------------|---------------|
| GET | `/api/follow/` | List follow relationships | ✓ |
| POST | `/api/follow/` | Follow a user | ✓ |
| GET | `/api/follow/{id}/` | Get follow relationship | ✓ |
| DELETE | `/api/follow/{id}/` | Unfollow user | ✓ |
| GET | `/api/follow/followers/` | Get current user's followers | ✓ |
| GET | `/api/follow/following/` | Get users current user follows | ✓ |
| GET | `/api/follow/user/{user_id}/followers/` | Get user's followers | ✓ |
| GET | `/api/follow/user/{user_id}/following/` | Get users that user follows | ✓ |

#### Follow Data Structure
```json
{
  "id": 1,
  "follower": 2,
  "followed": 3,
  "follower_detail": {
    "id": 2,
    "username": "follower_user",
    "profile_pic": "https://example.com/pic.jpg"
  },
  "followed_detail": {
    "id": 3,
    "username": "followed_user",
    "profile_pic": "https://example.com/pic2.jpg"
  },
  "created_at": "2024-01-01T00:00:00Z"
}
```

### 4. Notifications App (`/api/notifications/`)

#### Notification Management

| Method | Endpoint | Description | Auth Required |
|--------|----------|-------------|---------------|
| GET | `/api/notifications/` | List user notifications | ✓ |
| POST | `/api/notifications/` | Create notification | ✓ |
| GET | `/api/notifications/{id}/` | Get notification details | ✓ |
| PUT/PATCH | `/api/notifications/{id}/` | Update notification | ✓ |
| DELETE | `/api/notifications/{id}/` | Delete notification | ✓ |
| POST | `/api/notifications/{id}/mark-read/` | Mark as read | ✓ |
| POST | `/api/notifications/{id}/mark-unread/` | Mark as unread | ✓ |
| POST | `/api/notifications/mark-all-read/` | Mark all as read | ✓ |
| GET | `/api/notifications/unread-count/` | Get unread count | ✓ |
| GET | `/api/notifications/types/` | List notification types | ✓ |

#### Notification Data Structure
```json
{
  "id": 1,
  "recipient": 2,
  "actor_name": "John Doe",
  "verb": "liked your review",
  "target_name": "Review of 'Great Book'",
  "action_object_name": "The Great Book",
  "notification_type_name": "review_like",
  "data": {},
  "read": false,
  "timestamp": "2024-01-01T00:00:00Z"
}
```

### 5. Recommendation App (`/api/recommendation/`)

#### AI Recommendations

| Method | Endpoint | Description | Auth Required |
|--------|----------|-------------|---------------|
| GET | `/api/recommendation/models/` | List recommendation models | ✓ (Admin) |
| POST | `/api/recommendation/models/` | Create recommendation model | ✓ (Admin) |
| GET | `/api/recommendation/models/{id}/` | Get model details | ✓ (Admin) |
| PUT/PATCH | `/api/recommendation/models/{id}/` | Update model | ✓ (Admin) |
| DELETE | `/api/recommendation/models/{id}/` | Delete model | ✓ (Admin) |
| GET | `/api/recommendation/user-recommendations/` | Get user recommendations | ✓ |
| POST | `/api/recommendation/trigger/` | Trigger recommendation generation | ✓ (Admin) |

## Query Parameters and Filtering

### Book Filtering
The books endpoint supports extensive filtering:

```
GET /api/books/?authors__name__icontains=tolkien&genres__genre=fantasy&average_rate__gte=4.0
```

Supported filters:
- `authors__name`: Filter by author name (icontains, in)
- `genres__genre`: Filter by genre (icontains, in, exact)
- `average_rate`: Filter by rating (gte, lte)
- `description`: Filter by description (icontains)
- `publication_date`: Filter by publication date (exact, year, month, day, range)
- `number_of_pages`: Filter by page count (gte, lte, exact)
- `title`: Filter by title (exact, icontains, istartswith)

### Pagination
All list endpoints support limit/offset pagination:

```
GET /api/books/?limit=20&offset=40
```

## Error Responses

The API returns standard HTTP status codes with JSON error responses:

```json
{
  "error": "Error message",
  "details": "Additional error details"
}
```

Common status codes:
- `200`: Success
- `201`: Created
- `400`: Bad Request
- `401`: Unauthorized
- `403`: Forbidden
- `404`: Not Found
- `500`: Internal Server Error

## Features

### Key Capabilities
1. **User Management**: Registration, authentication, profile management with Cloudinary image uploads
2. **Book Catalog**: Comprehensive book database with authors, genres, and metadata
3. **Social Features**: User following, reviews, ratings, and reading lists
4. **Notifications**: Real-time notification system for user interactions
5. **AI Recommendations**: Machine learning-powered book recommendations using SVD and KNN algorithms
6. **Search**: Advanced book search with external API integration
7. **Content Moderation**: Vote-based review system with upvotes/downvotes

### Technical Features
- JWT Authentication
- Cloudinary Integration for image storage
- PostgreSQL database with optimized indexes
- Django REST Framework with automatic API documentation
- Comprehensive filtering and pagination
- Permission-based access control
- Signal-based notification system

This API provides a complete backend solution for a social book recommendation platform with modern REST API design principles and comprehensive functionality for book enthusiasts.

## Getting Started

### Prerequisites
- Python 3.8+
- PostgreSQL
- Redis (for caching)
- Cloudinary account (for image storage)

### Installation
1. Clone the repository
2. Install dependencies: `pip install -r req.txt`
3. Set up environment variables in `.env`
4. Run migrations: `python manage.py migrate`
5. Start the server: `python manage.py runserver`

### Environment Variables
Required environment variables (see `.env.example`):
- `DATABASE_URL`
- `SECRET_KEY`
- `CLOUDINARY_CLOUD_NAME`
- `CLOUDINARY_API_KEY`
- `CLOUDINARY_API_SECRET`

## Support

For API support and questions, please refer to the automatic documentation available at:
- Swagger UI: `http://localhost:8000/api/swagger/`
- ReDoc: `http://localhost:8000/api/redoc/`