# BookNest - Books App Documentation

## Overview

The Books App is the core component of the BookNest platform, providing comprehensive functionality for managing books, authors, reviews, ratings, reading lists, and search capabilities. This documentation covers all aspects of the Books App, including data models, API endpoints, and utility services.

## Table of Contents

1. [Data Models](#data-models)
2. [API Endpoints](#api-endpoints)
   - [Books](#books-endpoints)
   - [Authors](#authors-endpoints)
   - [Search & Suggestions](#search--suggestions-endpoints)
   - [Reviews & Ratings](#reviews--ratings-endpoints)
   - [Reading Lists](#reading-lists-endpoints)
   - [Votes](#votes-endpoints)
3. [Utility Services](#utility-services)
   - [Search Service](#search-service)
   - [External API Integration](#external-api-integration)
   - [Book Normalization](#book-normalization)
   - [Book Service](#book-service)

## Data Models

### Book

Represents a book with its metadata, including title, authors, ISBN, publication date, etc.

Key fields:
- `title`: The book's title
- `isbn13`: ISBN-13 identifier (unique)
- `isbn10`: ISBN-10 identifier
- `description`: Book description/summary
- `cover_image`: URL to the book's cover image
- `publication_date`: Date of publication
- `page_count`: Number of pages
- `average_rating`: Calculated average rating
- `ratings_count`: Number of ratings received

Relationships:
- Many-to-many with `Author` through `BookAuthor`
- Many-to-many with `Genre` through `BookGenre`
- One-to-many with `BookReview`
- One-to-many with `BookRating`

### Author

Represents a book author with biographical information.

Key fields:
- `name`: Author's full name
- `biography`: Author's biographical information
- `birth_date`: Author's date of birth
- `data_quality`: Indicator of data completeness/quality
- `last_updated`: Timestamp of last update

Relationships:
- Many-to-many with `Book` through `BookAuthor`

### BookReview

Represents a user's review of a book.

Key fields:
- `book`: Reference to the reviewed book
- `user`: Reference to the reviewing user
- `text`: Review content
- `rating`: Rating given in the review (1-5)
- `created_at`: Review creation timestamp
- `updated_at`: Review update timestamp
- `upvotes_count`: Number of upvotes
- `downvotes_count`: Number of downvotes

Relationships:
- Many-to-one with `Book`
- Many-to-one with `User`
- One-to-many with `ReviewVote`

### BookRating

Represents a user's rating of a book without a review.

Key fields:
- `book`: Reference to the rated book
- `user`: Reference to the rating user
- `rating`: Rating value (1-5)
- `created_at`: Rating creation timestamp

Relationships:
- Many-to-one with `Book`
- Many-to-one with `User`

### ReadingList

Represents a user-created collection of books.

Key fields:
- `name`: List name
- `description`: List description
- `user`: Reference to the list owner
- `is_public`: Visibility flag (public/private)
- `created_at`: List creation timestamp
- `updated_at`: List update timestamp

Relationships:
- Many-to-one with `User`
- Many-to-many with `Book` through `ReadingListBook`

### ReviewVote

Represents a user's vote on a book review.

Key fields:
- `review`: Reference to the voted review
- `user`: Reference to the voting user
- `vote_type`: Type of vote (upvote/downvote)
- `created_at`: Vote creation timestamp

Relationships:
- Many-to-one with `BookReview`
- Many-to-one with `User`

## API Endpoints

### Books Endpoints

#### GET /api/books/list/

Retrieve a paginated list of books.

Query parameters:
- `page`: Page number (default: 1)
- `page_size`: Number of books per page (default: 10)
- `search`: Search term for title, author, or description
- `genre`: Filter by genre name
- `author`: Filter by author name
- `min_rating`: Filter by minimum average rating
- `min_year`: Filter by minimum publication year
- `max_year`: Filter by maximum publication year
- `min_pages`: Filter by minimum page count
- `max_pages`: Filter by maximum page count
- `sort_by`: Sort field (title, publication_date, average_rating)
- `sort_order`: Sort direction (asc, desc)

Response:
```json
{
  "count": 100,
  "next": "http://api.booknest.com/api/books/?page=2",
  "previous": null,
  "results": [
    {
      "id": 1,
      "title": "The Great Gatsby",
      "isbn13": "9780743273565",
      "isbn10": "0743273567",
      "cover_image": "https://example.com/covers/great-gatsby.jpg",
      "publication_date": "1925-04-10",
      "average_rating": 4.2,
      "ratings_count": 1250,
      "authors": [
        {
          "id": 1,
          "name": "F. Scott Fitzgerald"
        }
      ],
      "genres": [
        {
          "id": 1,
          "name": "Fiction"
        },
        {
          "id": 2,
          "name": "Classics"
        }
      ]
    },
    // More books...
  ]
}
```

#### GET /api/books/books/{id}/

Retrieve detailed information about a specific book.

Response:
```json
{
  "id": 1,
  "title": "The Great Gatsby",
  "isbn13": "9780743273565",
  "isbn10": "0743273567",
  "description": "Set in the Jazz Age on Long Island...",
  "cover_image": "https://example.com/covers/great-gatsby.jpg",
  "publication_date": "1925-04-10",
  "page_count": 180,
  "average_rating": 4.2,
  "ratings_count": 1250,
  "authors": [
    {
      "id": 1,
      "name": "F. Scott Fitzgerald",
      "biography": "Francis Scott Key Fitzgerald was an American novelist..."
    }
  ],
  "genres": [
    {
      "id": 1,
      "name": "Fiction"
    },
    {
      "id": 2,
      "name": "Classics"
    }
  ],
  "user_rating": {
    "rating": 5,
    "created_at": "2023-05-15T14:30:00Z"
  },
  "user_review": {
    "id": 42,
    "text": "A masterpiece of American literature...",
    "rating": 5,
    "created_at": "2023-05-15T14:35:00Z",
    "updated_at": "2023-05-15T14:35:00Z",
    "upvotes_count": 15,
    "downvotes_count": 2
  }
}
```

### Authors Endpoints

#### GET /api/books/authors/

Retrieve a paginated list of authors.

Query parameters:
- `page`: Page number (default: 1)
- `page_size`: Number of authors per page (default: 10)
- `search`: Search term for author name

Response:
```json
{
  "count": 50,
  "next": "http://api.booknest.com/api/authors/?page=2",
  "previous": null,
  "results": [
    {
      "id": 1,
      "name": "F. Scott Fitzgerald",
      "biography": "Francis Scott Key Fitzgerald was an American novelist...",
      "birth_date": "1896-09-24",
      "book_count": 8
    },
    // More authors...
  ]
}
```

#### GET /api/books/authors/{id}/

Retrieve detailed information about a specific author.

Response:
```json
{
  "id": 1,
  "name": "F. Scott Fitzgerald",
  "biography": "Francis Scott Key Fitzgerald was an American novelist...",
  "birth_date": "1896-09-24",
  "books": [
    {
      "id": 1,
      "title": "The Great Gatsby",
      "cover_image": "https://example.com/covers/great-gatsby.jpg",
      "publication_date": "1925-04-10",
      "average_rating": 4.2
    },
    // More books by this author...
  ]
}
```

### Search & Suggestions Endpoints

#### GET /api/books/search/

Search for books using full-text search.

Query parameters:
- `q`: Search query (required)
- `page`: Page number (default: 1)
- `page_size`: Number of results per page (default: 10)
- `include_external`: Include results from external APIs (default: true)
- `genre`: Filter by genre name
- `min_rating`: Filter by minimum average rating
- `min_year`: Filter by minimum publication year
- `max_year`: Filter by maximum publication year
- `min_pages`: Filter by minimum page count
- `max_pages`: Filter by maximum page count

Response:
```json
{
  "count": 25,
  "next": "http://api.booknest.com/api/books/search/?q=gatsby&page=2",
  "previous": null,
  "results": [
    {
      "id": 1,
      "title": "The Great Gatsby",
      "isbn13": "9780743273565",
      "cover_image": "https://example.com/covers/great-gatsby.jpg",
      "publication_date": "1925-04-10",
      "average_rating": 4.2,
      "authors": [
        {
          "id": 1,
          "name": "F. Scott Fitzgerald"
        }
      ],
      "source": "local"
    },
    // More books...
  ]
}
```

#### GET /api/books/suggestions/

Get real-time book title suggestions based on partial input.

Query parameters:
- `q`: Partial title query (required)
- `limit`: Maximum number of suggestions (default: 5)

Response:
```json
{
  "suggestions": [
    {
      "id": 1,
      "title": "The Great Gatsby",
      "cover_image": "https://example.com/covers/great-gatsby.jpg",
      "authors": ["F. Scott Fitzgerald"]
    },
    // More suggestions...
  ]
}
```

#### GET /api/books/{id}/related/

Get book suggestions related to a specific book.

Query parameters:
- `limit`: Maximum number of related books (default: 5)
- `include_external`: Include results from external APIs (default: false)

Response:
```json
{
  "related_books": [
    {
      "id": 2,
      "title": "Tender Is the Night",
      "cover_image": "https://example.com/covers/tender-night.jpg",
      "authors": ["F. Scott Fitzgerald"],
      "average_rating": 4.0,
      "relevance_score": 0.85,
      "source": "local"
    },
    // More related books...
  ]
}
```

### Reviews & Ratings Endpoints

#### GET /api/books/{book_id}/reviews/

Retrieve reviews for a specific book.

Query parameters:
- `page`: Page number (default: 1)
- `page_size`: Number of reviews per page (default: 10)
- `sort_by`: Sort field (created_at, updated_at, rating, upvotes_count)
- `sort_order`: Sort direction (asc, desc)

Response:
```json
{
  "count": 15,
  "next": "http://api.booknest.com/api/books/1/reviews/?page=2",
  "previous": null,
  "results": [
    {
      "id": 42,
      "user": {
        "id": 5,
        "username": "bookworm",
        "profile_image": "https://example.com/profiles/bookworm.jpg"
      },
      "text": "A masterpiece of American literature...",
      "rating": 5,
      "created_at": "2023-05-15T14:35:00Z",
      "updated_at": "2023-05-15T14:35:00Z",
      "upvotes_count": 15,
      "downvotes_count": 2,
      "user_vote": "upvote"
    },
    // More reviews...
  ]
}
```

#### POST /api/books/{book_id}/reviews/

Create a new review for a book.

Request body:
```json
{
  "text": "A masterpiece of American literature...",
  "rating": 5
}
```

Response:
```json
{
  "id": 42,
  "user": {
    "id": 5,
    "username": "bookworm",
    "profile_image": "https://example.com/profiles/bookworm.jpg"
  },
  "text": "A masterpiece of American literature...",
  "rating": 5,
  "created_at": "2023-05-15T14:35:00Z",
  "updated_at": "2023-05-15T14:35:00Z",
  "upvotes_count": 0,
  "downvotes_count": 0
}
```

#### PUT /api/reviews/{review_id}/

Update an existing review.

Request body:
```json
{
  "text": "Updated review text...",
  "rating": 4
}
```

Response: Same as POST but with updated values.

#### DELETE /api/reviews/{review_id}/

Delete a review.

Response: 204 No Content

#### POST /api/books/{book_id}/ratings/

Rate a book without a review.

Request body:
```json
{
  "rating": 4
}
```

Response:
```json
{
  "id": 123,
  "book": 1,
  "user": 5,
  "rating": 4,
  "created_at": "2023-05-15T14:30:00Z"
}
```

#### PUT /api/ratings/{rating_id}/

Update an existing rating.

Request body:
```json
{
  "rating": 5
}
```

Response: Same as POST but with updated values.

#### DELETE /api/ratings/{rating_id}/

Delete a rating.

Response: 204 No Content

### Reading Lists Endpoints

#### GET /api/reading-lists/

Retrieve reading lists (public lists and user's own lists).

Query parameters:
- `page`: Page number (default: 1)
- `page_size`: Number of lists per page (default: 10)

Response:
```json
{
  "count": 8,
  "next": null,
  "previous": null,
  "results": [
    {
      "id": 1,
      "name": "Classic Literature",
      "description": "Must-read classics from the literary canon",
      "user": {
        "id": 5,
        "username": "bookworm"
      },
      "is_public": true,
      "created_at": "2023-04-10T12:00:00Z",
      "updated_at": "2023-05-15T14:00:00Z",
      "book_count": 12
    },
    // More reading lists...
  ]
}
```

#### GET /api/reading-lists/{id}/

Retrieve a specific reading list with its books.

Response:
```json
{
  "id": 1,
  "name": "Classic Literature",
  "description": "Must-read classics from the literary canon",
  "user": {
    "id": 5,
    "username": "bookworm"
  },
  "is_public": true,
  "created_at": "2023-04-10T12:00:00Z",
  "updated_at": "2023-05-15T14:00:00Z",
  "books": [
    {
      "id": 1,
      "title": "The Great Gatsby",
      "cover_image": "https://example.com/covers/great-gatsby.jpg",
      "authors": ["F. Scott Fitzgerald"],
      "average_rating": 4.2
    },
    // More books in the list...
  ]
}
```

#### POST /api/reading-lists/

Create a new reading list.

Request body:
```json
{
  "name": "Summer Reading 2023",
  "description": "Books I plan to read this summer",
  "is_public": true
}
```

Response:
```json
{
  "id": 9,
  "name": "Summer Reading 2023",
  "description": "Books I plan to read this summer",
  "user": {
    "id": 5,
    "username": "bookworm"
  },
  "is_public": true,
  "created_at": "2023-05-20T10:00:00Z",
  "updated_at": "2023-05-20T10:00:00Z",
  "books": []
}
```

#### PUT /api/reading-lists/{id}/

Update an existing reading list.

Request body:
```json
{
  "name": "Updated List Name",
  "description": "Updated description",
  "is_public": false
}
```

Response: Same as POST but with updated values.

#### DELETE /api/reading-lists/{id}/

Delete a reading list.

Response: 204 No Content

#### POST /api/reading-lists/{list_id}/books/

Add a book to a reading list.

Request body:
```json
{
  "book_id": 2
}
```

Response:
```json
{
  "message": "Book added to reading list successfully",
  "book": {
    "id": 2,
    "title": "Tender Is the Night",
    "cover_image": "https://example.com/covers/tender-night.jpg",
    "authors": ["F. Scott Fitzgerald"]
  }
}
```

#### DELETE /api/reading-lists/{list_id}/books/{book_id}/

Remove a book from a reading list.

Response: 204 No Content

### Votes Endpoints

#### POST /api/reviews/{review_id}/votes/

Create or update a vote on a review.

Request body:
```json
{
  "vote_type": "upvote"  // or "downvote"
}
```

Response:
```json
{
  "id": 75,
  "review": 42,
  "user": 5,
  "vote_type": "upvote",
  "created_at": "2023-05-20T11:30:00Z",
  "upvotes_count": 16,
  "downvotes_count": 2
}
```

#### DELETE /api/reviews/{review_id}/votes/

Remove a vote from a review.

Response:
```json
{
  "upvotes_count": 15,
  "downvotes_count": 2
}
```

#### GET /api/reviews/by-votes/

Retrieve reviews sorted by vote metrics.

Query parameters:
- `metric`: Vote metric to sort by (upvotes, downvotes, net_votes, controversial)
- `page`: Page number (default: 1)
- `page_size`: Number of reviews per page (default: 10)

Response: Similar to GET /api/books/{book_id}/reviews/ but sorted by the specified metric.

#### GET /api/reviews/top/

Retrieve top-rated reviews.

Query parameters:
- `limit`: Maximum number of reviews (default: 10)
- `min_votes`: Minimum number of votes required (default: 5)

Response: Similar to GET /api/books/{book_id}/reviews/ but limited to top reviews.

#### GET /api/reviews/{review_id}/vote-stats/

Get detailed vote statistics for a review.

Response:
```json
{
  "review_id": 42,
  "upvotes_count": 15,
  "downvotes_count": 2,
  "total_votes": 17,
  "upvote_percentage": 88.2,
  "downvote_percentage": 11.8,
  "user_vote": "upvote",
  "controversy_score": 0.35
}
```

## Utility Services

### Search Service

The search service provides full-text search capabilities for books using PostgreSQL's full-text search features.

#### PostgreSQLSearchService

Main class for handling book searches with the following features:

- Full-text search across book titles, descriptions, and author names
- Ranking of search results based on relevance
- Filtering by genre, minimum rating, publication date range, and page count range
- Integration with external APIs for expanded search results
- Pagination of search results
- Suggestions for book titles based on partial input

Key methods:
- `search(query, filters, page, page_size, include_external)`: Perform a search with optional filters and pagination
- `get_suggestions(query, limit)`: Get book title suggestions based on partial input

### External API Integration

The Books App integrates with external book APIs to enhance its database and provide more comprehensive search results.

#### OpenLibraryClient

Client for the OpenLibrary API with the following features:

- Book search by title, author, or ISBN
- Author information retrieval
- Cover image URL generation
- ISBN normalization and validation
- Error handling and retry logic

Key methods:
- `search_books(query, limit)`: Search for books by title or author
- `get_author_details(author_id)`: Retrieve detailed information about an author

#### GoogleBooksClient

Client for the Google Books API with the following features:

- Book search by title, author, or ISBN
- Detailed book information retrieval
- Author information extraction
- Cover image URL generation
- Genre/category mapping

Key methods:
- `search_books(query, limit)`: Search for books by title or author
- `get_author_details(author_name)`: Retrieve information about an author

#### search_external_apis

Utility function that combines results from multiple external APIs:

- Searches both OpenLibrary and Google Books APIs
- Deduplicates results based on ISBN13
- Handles network connectivity issues
- Implements retry mechanisms with exponential backoff
- Normalizes results to a consistent format

### Book Normalization

The `BookNormalizer` class standardizes book data from various sources (Google Books, OpenLibrary, local database) into a consistent format.

Key features:
- ISBN normalization and validation
- Author name formatting
- Genre standardization with mapping for common abbreviations
- Cover image URL normalization
- Publication date parsing from various formats
- Description cleaning
- Page count validation

Main method:
- `normalize(book_data, source)`: Standardize book data based on its source

### Book Service

The `book_service` module provides utilities for saving external book data to the local database.

Key function:
- `save_external_book(book_data)`: Save a book from an external API to the database

Features:
- Validation of required book fields
- Network connectivity checks for cover images
- Duplicate detection by ISBN13
- Author creation or update with data quality tracking
- Genre creation and association
- Default genre assignment if none provided

## Conclusion

The Books App provides a comprehensive set of features for managing books, authors, reviews, ratings, and reading lists. Its API endpoints enable frontend applications to interact with the book database, search for books, manage user-generated content, and integrate with external book APIs for enhanced functionality.

The utility services ensure data consistency, provide powerful search capabilities, and enable seamless integration with external data sources, making the Books App a robust foundation for the BookNest platform.