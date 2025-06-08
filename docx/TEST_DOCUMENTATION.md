# BookNest Test Documentation

## Table of Contents
- [BookNest Test Documentation](#booknest-test-documentation)
  - [Table of Contents](#table-of-contents)
  - [1. Users Module Tests](#1-users-module-tests)
    - [1.1 User Authentication API Tests (`users/tests/test_api.py`)](#11-user-authentication-api-tests-usersteststest_apipy)
      - [Test Cases:](#test-cases)
    - [1.2 Profile API Tests (`users/tests/test_api.py`)](#12-profile-api-tests-usersteststest_apipy)
      - [Test Cases:](#test-cases-1)
    - [1.3 User Model Tests (`users/tests/test_models.py`)](#13-user-model-tests-usersteststest_modelspy)
      - [Test Cases:](#test-cases-2)
    - [1.4 Profile Model Tests (`users/tests/test_models.py`)](#14-profile-model-tests-usersteststest_modelspy)
      - [Test Cases:](#test-cases-3)
  - [2. Books Module Tests](#2-books-module-tests)
    - [2.1 Book API Tests (`books/tests/test_api.py`)](#21-book-api-tests-booksteststest_apipy)
      - [Test Cases:](#test-cases-4)
    - [2.2 Author API Tests (`books/tests/test_api.py`)](#22-author-api-tests-booksteststest_apipy)
      - [Test Cases:](#test-cases-5)
  - [3. Notifications Module Tests](#3-notifications-module-tests)
    - [3.1 Notification API Tests (`notifications/tests/test_api.py`)](#31-notification-api-tests-notificationsteststest_apipy)
      - [Test Cases:](#test-cases-6)
    - [3.2 Notification Model Tests (`notifications/tests/test_models.py`)](#32-notification-model-tests-notificationsteststest_modelspy)
      - [Test Cases:](#test-cases-7)
  - [4. Follows Module Tests](#4-follows-module-tests)
    - [4.1 Follow API Tests (`follows/tests/test_api.py`)](#41-follow-api-tests-followsteststest_apipy)
      - [Test Cases:](#test-cases-8)
  - [5. Recommendation Module Tests](#5-recommendation-module-tests)
    - [5.1 Recommendation Tests (`recommendation/tests.py`)](#51-recommendation-tests-recommendationtestspy)
      - [Test Cases:](#test-cases-9)
  - [Test Coverage Summary](#test-coverage-summary)
  - [Testing Framework](#testing-framework)
  - [Running Tests](#running-tests)

## 1. Users Module Tests

### 1.1 User Authentication API Tests (`users/tests/test_api.py`)
Tests for user authentication endpoints including registration, login, logout, and token management.

#### Test Cases:
- `test_user_registration`: Verifies user registration with valid credentials
- `test_user_login`: Tests user login functionality
- `test_user_logout`: Validates logout functionality
- `test_get_user_details_authenticated`: Checks authenticated user details retrieval
- `test_get_user_details_unauthenticated`: Verifies unauthorized access handling
- `test_token_verify`: Tests JWT token verification
- `test_token_refresh`: Validates token refresh functionality

### 1.2 Profile API Tests (`users/tests/test_api.py`)
Tests for user profile management endpoints.

#### Test Cases:
- `test_get_my_profile`: Verifies profile retrieval
- `test_update_my_profile`: Tests profile update functionality
- `test_list_profiles_authenticated`: Checks profile listing
- `test_retrieve_profile_authenticated`: Tests individual profile retrieval
- `test_cannot_update_other_user_profile`: Validates profile update permissions
- `test_create_profile_fails_if_already_exists`: Verifies profile creation constraints
- `test_upload_profile_picture`: Tests profile picture upload
- `test_upload_profile_picture_no_file`: Validates error handling for missing files
- `test_upload_profile_picture_invalid_file_type`: Tests file type validation
- `test_get_profile_by_username_query_param`: Verifies profile search by username
- `test_unauthenticated_access_to_profile_endpoints`: Tests unauthorized access handling

### 1.3 User Model Tests (`users/tests/test_models.py`)
Tests for User model functionality.

#### Test Cases:
- `test_create_user`: Verifies user creation
- `test_create_user_no_email`: Tests user creation validation
- `test_create_superuser`: Validates superuser creation
- `test_user_str_representation`: Tests string representation

### 1.4 Profile Model Tests (`users/tests/test_models.py`)
Tests for Profile model functionality.

#### Test Cases:
- `test_duplicate_profile_social_link_platform`: Verifies social link uniqueness
- `test_profile_settings_default`: Tests default profile settings
- `test_profile_settings_update`: Validates profile settings updates

## 2. Books Module Tests

### 2.1 Book API Tests (`books/tests/test_api.py`)
Tests for book-related API endpoints.

#### Test Cases:
- `test_get_book_list_unauthenticated`: Verifies public book listing
- `test_get_book_detail_unauthenticated`: Tests public book detail access
- `test_create_book_unauthenticated`: Validates unauthorized book creation
- `test_create_book_authenticated_admin`: Tests admin book creation
- `test_update_book_authenticated_admin`: Verifies admin book updates
- `test_delete_book_authenticated_admin`: Tests admin book deletion

### 2.2 Author API Tests (`books/tests/test_api.py`)
Tests for author-related API endpoints.

#### Test Cases:
- `test_get_author_list_unauthenticated`: Verifies public author listing
- `test_get_author_detail_unauthenticated`: Tests public author detail access
- `test_create_author_unauthenticated`: Validates unauthorized author creation
- `test_create_author_authenticated_admin`: Tests admin author creation
- `test_update_author_authenticated_admin`: Verifies admin author updates
- `test_delete_author_authenticated_admin`: Tests admin author deletion
- `test_get_author_books_by_id`: Validates author's books retrieval

## 3. Notifications Module Tests

### 3.1 Notification API Tests (`notifications/tests/test_api.py`)
Tests for notification-related API endpoints.

#### Test Cases:
- `test_get_notification_list_unauthenticated`: Verifies unauthorized notification listing
- `test_get_notification_list_authenticated`: Tests authenticated notification listing
- `test_get_notification_detail_authenticated`: Validates notification detail access
- `test_get_notification_detail_unauthorized_access`: Tests unauthorized detail access
- `test_mark_notification_as_read`: Verifies notification read status
- `test_mark_notification_as_unread`: Tests notification unread status
- `test_mark_all_notifications_as_read`: Validates bulk read status update
- `test_get_unread_notification_count`: Tests unread notification counting
- `test_get_notification_type_list`: Verifies notification type listing
- `test_get_notification_type_detail`: Tests notification type detail access

### 3.2 Notification Model Tests (`notifications/tests/test_models.py`)
Tests for notification model functionality.

#### Test Cases:
- `test_notification_type_creation`: Verifies notification type creation
- `test_notification_type_str`: Tests notification type string representation
- `test_notification_creation`: Validates notification creation
- `test_notification_str`: Tests notification string representation
- `test_mark_as_read`: Verifies read status marking
- `test_mark_as_unread`: Tests unread status marking
- `test_notification_without_actor`: Validates system notifications
- `test_notification_ordering`: Tests notification ordering
- `test_create_default_notification_types_function`: Verifies default type creation

## 4. Follows Module Tests

### 4.1 Follow API Tests (`follows/tests/test_api.py`)
Tests for follow-related API endpoints.

#### Test Cases:
- `test_follow_user_authenticated`: Verifies user following
- `test_follow_user_already_following`: Tests duplicate follow prevention
- `test_follow_self_attempt`: Validates self-follow prevention
- `test_unfollow_user_authenticated`: Tests user unfollowing
- `test_unfollow_user_not_following`: Verifies unfollow error handling
- `test_get_my_followers_list_authenticated`: Tests followers listing
- `test_get_my_following_list_authenticated`: Validates following listing

## 5. Recommendation Module Tests

### 5.1 Recommendation Tests (`recommendation/tests.py`)
Tests for recommendation system functionality.

#### Test Cases:
- `test_recommendation_trigger`: Validates recommendation generation process
  - Tests user login
  - Creates ratings (up to 10)
  - Verifies recommendation generation

## Test Coverage Summary
The test suite covers:
- Authentication and authorization
- CRUD operations for all major models
- API endpoint functionality
- Model validation and constraints
- Error handling and edge cases
- User interactions and permissions
- File upload handling
- Notification system
- Following system
- Recommendation system

## Testing Framework
The project uses:
- Django's TestCase and APITestCase
- REST framework's test utilities
- Requests library for external API testing
- Standard Python unittest assertions

## Running Tests
To run the tests, use the standard Django test command:
```bash
python manage.py test
```

For specific test modules:
```bash
python manage.py test users.tests
python manage.py test books.tests
python manage.py test notifications.tests
python manage.py test follows.tests
python manage.py test recommendation.tests
``` 