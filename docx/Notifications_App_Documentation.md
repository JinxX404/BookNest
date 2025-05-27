# Notifications App Documentation

## Overview

The Notifications app provides a comprehensive notification system for the BookNest platform. It enables real-time communication between users through various types of notifications including follows, book reviews, ratings, and system announcements. The app uses Django's ContentType framework for flexible generic relationships and implements a service-oriented architecture for notification management.

## Features

- **Multi-Type Notifications**: Support for various notification types (follows, reviews, ratings, system)
- **Generic Relations**: Flexible notification system using Django's ContentType framework
- **Read/Unread Management**: Track and manage notification read status
- **Bulk Operations**: Mark all notifications as read, bulk delete operations
- **Automatic Triggers**: Signal-based automatic notification creation
- **Service Layer**: Clean service architecture for notification management
- **API-First Design**: Complete REST API for notification operations
- **Permission System**: Secure access control for user notifications

## API Endpoints

### Base URL
All endpoints are prefixed with `/api/notifications/`

### Notification Management

#### 1. List Notifications
- **Endpoint**: `GET /api/notifications/`
- **Description**: Lists notifications for the current user
- **Authentication**: Required
- **Query Parameters**:
  - `read`: Filter by read status (`true`/`false`)
  - `type`: Filter by notification type name
- **Response**: Paginated list of notifications with detailed information

#### 2. Get Notification Details
- **Endpoint**: `GET /api/notifications/{id}/`
- **Description**: Retrieves details of a specific notification
- **Authentication**: Required
- **Permissions**: Only notification recipient or admin

#### 3. Create Notification
- **Endpoint**: `POST /api/notifications/create/`
- **Description**: Creates a new notification
- **Authentication**: Required
- **Request Body**:
  ```json
  {
    "recipient_id": 123,
    "actor_id": 456,
    "verb": "commented on your post",
    "target_content_type": "book",
    "target_object_id": "789",
    "notification_type": "comment",
    "data": {"additional": "info"}
  }
  ```

#### 4. Update Notification
- **Endpoint**: `PUT/PATCH /api/notifications/{id}/update/`
- **Description**: Updates notification details
- **Authentication**: Required
- **Permissions**: Only notification recipient or admin

#### 5. Delete Notification
- **Endpoint**: `DELETE /api/notifications/{id}/delete/`
- **Description**: Deletes a specific notification
- **Authentication**: Required
- **Permissions**: Only notification recipient or admin

### Read Status Management

#### 6. Mark as Read
- **Endpoint**: `POST /api/notifications/{id}/mark-read/`
- **Description**: Marks a specific notification as read
- **Authentication**: Required
- **Response**: `204 No Content`

#### 7. Mark as Unread
- **Endpoint**: `POST /api/notifications/{id}/mark-unread/`
- **Description**: Marks a specific notification as unread
- **Authentication**: Required
- **Response**: `204 No Content`

#### 8. Mark All as Read
- **Endpoint**: `POST /api/notifications/mark-all-read/`
- **Description**: Marks all user notifications as read
- **Authentication**: Required
- **Response**: `204 No Content`

#### 9. Get Unread Count
- **Endpoint**: `GET /api/notifications/unread-count/`
- **Description**: Returns count of unread notifications
- **Authentication**: Required
- **Response**:
  ```json
  {
    "count": 5
  }
  ```

### Notification Types

#### 10. List Notification Types
- **Endpoint**: `GET /api/notifications/types/`
- **Description**: Lists all available notification types
- **Authentication**: Required

#### 11. Get Notification Type Details
- **Endpoint**: `GET /api/notifications/types/{id}/`
- **Description**: Retrieves details of a specific notification type
- **Authentication**: Required

## Models

### NotificationType Model

Defines the types of notifications available in the system.

```python
class NotificationType(models.Model):
    name = models.CharField(max_length=50, unique=True)
    description = models.TextField(blank=True)
```

**Fields:**
- `name`: Unique identifier for the notification type
- `description`: Human-readable description of the notification type

**Default Types:**
- `FOLLOW`: User follow notifications
- `BOOK_REVIEW`: Book review notifications
- `BOOK_RATING`: Book rating notifications
- `MENTION`: User mention notifications
- `SYSTEM`: System announcements

### Notification Model

The main notification model using Django's generic foreign keys for flexibility.

```python
class Notification(models.Model):
    recipient = models.ForeignKey(User, on_delete=models.CASCADE, related_name='notifications')
    
    # Generic foreign key for actor
    actor_content_type = models.ForeignKey(ContentType, on_delete=models.CASCADE, null=True, blank=True, related_name='notify_actor')
    actor_object_id = models.PositiveIntegerField(null=True, blank=True)
    actor = GenericForeignKey('actor_content_type', 'actor_object_id')
    
    verb = models.CharField(max_length=255)
    
    # Generic foreign key for target
    target_content_type = models.ForeignKey(ContentType, on_delete=models.CASCADE, null=True, blank=True, related_name='notify_target')
    target_object_id = models.PositiveIntegerField(null=True, blank=True)
    target = GenericForeignKey('target_content_type', 'target_object_id')
    
    # Generic foreign key for action object
    action_object_content_type = models.ForeignKey(ContentType, on_delete=models.CASCADE, null=True, blank=True, related_name='notify_action_object')
    action_object_id = models.PositiveIntegerField(null=True, blank=True)
    action_object = GenericForeignKey('action_object_content_type', 'action_object_id')
    
    notification_type = models.ForeignKey(NotificationType, on_delete=models.SET_NULL, null=True, blank=True)
    data = models.JSONField(default=dict, blank=True)
    read = models.BooleanField(default=False)
    timestamp = models.DateTimeField(auto_now_add=True)
```

**Fields:**
- `recipient`: User who receives the notification
- `actor`: User or object that performed the action (generic)
- `verb`: Description of the action performed
- `target`: Object the action was performed on (generic)
- `action_object`: Object created by the action (generic)
- `notification_type`: Type of notification
- `data`: Additional JSON data
- `read`: Read status
- `timestamp`: Creation timestamp

**Methods:**
- `mark_as_read()`: Mark notification as read
- `mark_as_unread()`: Mark notification as unread

## Serializers

### 1. NotificationTypeSerializer
- **Purpose**: Serializing notification types
- **Fields**: `id`, `name`, `description`

### 2. NotificationSerializer
- **Purpose**: Full notification details with computed fields
- **Fields**: `id`, `recipient`, `actor_name`, `verb`, `target_name`, `action_object_name`, `notification_type_name`, `data`, `read`, `timestamp`
- **Computed Fields**:
  - `actor_name`: String representation of actor
  - `target_name`: String representation of target
  - `action_object_name`: String representation of action object
  - `notification_type_name`: Name of notification type

### 3. NotificationCreateSerializer
- **Purpose**: Creating notifications via API
- **Fields**: `recipient_id`, `actor_id`, `verb`, `target_content_type`, `target_object_id`, `action_object_content_type`, `action_object_id`, `notification_type`, `data`
- **Validations**:
  - Validates recipient and actor user existence
  - Validates notification type existence
  - Handles content type resolution

## Views

### 1. NotificationListAPIView
- **Type**: `ListAPIView`
- **Purpose**: Lists user notifications with filtering
- **Permissions**: `IsAuthenticated`
- **Filtering**: By read status and notification type
- **Ordering**: Most recent first

### 2. NotificationDetailAPIView
- **Type**: `RetrieveAPIView`
- **Purpose**: Retrieves specific notification details
- **Permissions**: `IsRecipientOrAdmin`

### 3. NotificationCreateAPIView
- **Type**: `CreateAPIView`
- **Purpose**: Creates new notifications
- **Permissions**: `IsAuthenticated`

### 4. NotificationUpdateAPIView
- **Type**: `UpdateAPIView`
- **Purpose**: Updates notification details
- **Permissions**: `IsRecipientOrAdmin`

### 5. NotificationDeleteAPIView
- **Type**: `DestroyAPIView`
- **Purpose**: Deletes notifications
- **Permissions**: `IsRecipientOrAdmin`

### 6. NotificationMarkAsReadAPIView
- **Type**: `APIView`
- **Purpose**: Marks notifications as read
- **Method**: POST
- **Permissions**: `IsAuthenticated`

### 7. NotificationMarkAsUnreadAPIView
- **Type**: `APIView`
- **Purpose**: Marks notifications as unread
- **Method**: POST
- **Permissions**: `IsAuthenticated`

### 8. NotificationMarkAllAsReadAPIView
- **Type**: `APIView`
- **Purpose**: Marks all user notifications as read
- **Method**: POST
- **Permissions**: `IsAuthenticated`

### 9. NotificationUnreadCountAPIView
- **Type**: `APIView`
- **Purpose**: Returns unread notification count
- **Method**: GET
- **Permissions**: `IsAuthenticated`

### 10. NotificationTypeListAPIView
- **Type**: `ListAPIView`
- **Purpose**: Lists all notification types
- **Permissions**: `IsAuthenticated`

### 11. NotificationTypeDetailAPIView
- **Type**: `RetrieveAPIView`
- **Purpose**: Retrieves notification type details
- **Permissions**: `IsAuthenticated`

## Service Layer

### NotificationService

Central service class for notification management.

#### Methods:

##### create_notification()
```python
@classmethod
def create_notification(cls, recipient, verb, actor=None, target=None, 
                      action_object=None, notification_type=None, data=None):
```
- **Purpose**: Creates notifications with flexible parameters
- **Features**: Handles content type resolution, automatic type creation
- **Returns**: Created notification object

##### get_unread_count()
```python
@classmethod
def get_unread_count(cls, user):
```
- **Purpose**: Gets unread notification count for a user
- **Returns**: Integer count

##### mark_all_as_read()
```python
@classmethod
def mark_all_as_read(cls, user):
```
- **Purpose**: Marks all user notifications as read
- **Returns**: Number of notifications updated

##### delete_read_notifications()
```python
@classmethod
def delete_read_notifications(cls, user, days=30):
```
- **Purpose**: Deletes old read notifications
- **Parameters**: User and retention period in days
- **Returns**: Number of notifications deleted

## Signal Handlers

### Automatic Notification Triggers

#### 1. Follow Notifications
- **Trigger**: When a user follows another user
- **Signal**: `post_save` on `Follow` model
- **Notification**: "followed you"
- **Type**: `FOLLOW`

#### 2. Book Review Notifications
- **Trigger**: When a book review is created
- **Signal**: `post_save` on `BookReview` model
- **Recipients**: Book authors (if they have profiles)
- **Notification**: "reviewed your book"
- **Type**: `book_review`

#### 3. Book Rating Notifications
- **Trigger**: When a book rating is created
- **Signal**: `post_save` on `BookRating` model
- **Recipients**: Book authors (if they have profiles)
- **Notification**: "rated your book X stars"
- **Type**: `book_rating`

#### 4. Reading List Notifications
- **Trigger**: When a book is added to a reading list
- **Signal**: `post_save` on `ReadingListBooks` model
- **Recipients**: Book authors (if they have profiles)
- **Notification**: "added your book to their reading list"
- **Type**: `system`

#### 5. Default Type Creation
- **Trigger**: After migrations
- **Signal**: `post_migrate`
- **Action**: Creates default notification types

## Permissions

### Custom Permissions

#### IsRecipientOrAdmin
- **Purpose**: Ensures users can only access their own notifications
- **Rules**:
  - Admin users can access all notifications
  - Regular users can only access notifications where they are the recipient
- **Usage**: Applied to detail, update, and delete views

### Authentication
- **Method**: JWT Token Authentication
- **Requirement**: All endpoints require authentication
- **Token**: Must be included in Authorization header

## Error Handling

### Common Error Responses

#### 400 Bad Request
```json
{
  "recipient_id": ["Recipient user does not exist"]
}
```

```json
{
  "notification_type": ["Notification type does not exist"]
}
```

#### 401 Unauthorized
```json
{
  "detail": "Authentication credentials were not provided."
}
```

#### 403 Forbidden
```json
{
  "detail": "You do not have permission to perform this action."
}
```

#### 404 Not Found
```json
{
  "detail": "Not found."
}
```

## Usage Examples

### Get Unread Notifications
```bash
curl -X GET "http://localhost:8000/api/notifications/?read=false" \
  -H "Authorization: Bearer YOUR_JWT_TOKEN"
```

### Mark Notification as Read
```bash
curl -X POST http://localhost:8000/api/notifications/123/mark-read/ \
  -H "Authorization: Bearer YOUR_JWT_TOKEN"
```

### Create Manual Notification
```bash
curl -X POST http://localhost:8000/api/notifications/create/ \
  -H "Authorization: Bearer YOUR_JWT_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "recipient_id": 123,
    "verb": "mentioned you in a comment",
    "notification_type": "mention"
  }'
```

### Get Unread Count
```bash
curl -X GET http://localhost:8000/api/notifications/unread-count/ \
  -H "Authorization: Bearer YOUR_JWT_TOKEN"
```

## Testing

### Test Files
- `notifications/tests/test_api.py`: API endpoint tests
- `notifications/tests/test_models.py`: Model validation tests

### Test Coverage
- Notification creation and management
- Signal-based automatic notifications
- Permission enforcement
- Read/unread status management
- Service layer functionality

### Running Tests
```bash
# Run all notifications app tests
python manage.py test notifications

# Run specific test file
python manage.py test notifications.tests.test_api

# Run with coverage
coverage run --source='.' manage.py test notifications
coverage report
```

## Security Considerations

### Data Protection
- **Authentication Required**: All endpoints require valid JWT tokens
- **User Isolation**: Users can only access their own notifications
- **Permission Checks**: Strict permission enforcement on all operations
- **Input Validation**: All inputs validated through serializers

### Privacy Controls
- **Recipient-Only Access**: Notifications are private to recipients
- **Admin Override**: Admins can access all notifications for moderation
- **Data Minimization**: Only necessary data is exposed in responses

### Content Security
- **Generic Relations**: Safe handling of content types
- **SQL Injection Prevention**: ORM-based queries prevent injection
- **XSS Protection**: JSON data is properly escaped

## Performance Optimization

### Database Optimization
- **Indexes**: Automatic indexes on foreign keys and timestamps
- **Query Optimization**: Efficient queries with proper filtering
- **Bulk Operations**: Bulk update for mark-all-as-read operations

### Caching Strategies
- **Unread Counts**: Cache frequently accessed unread counts
- **Notification Lists**: Cache recent notifications for active users
- **Type Lookups**: Cache notification types for faster resolution

### Cleanup Operations
- **Old Notification Cleanup**: Automatic deletion of old read notifications
- **Batch Processing**: Process notifications in batches for performance
- **Signal Optimization**: Efficient signal handlers to prevent bottlenecks

## Integration Points

### Books App
- **Review Notifications**: Automatic notifications for book reviews
- **Rating Notifications**: Automatic notifications for book ratings
- **Reading List Notifications**: Notifications when books are added to lists

### Follows App
- **Follow Notifications**: Automatic notifications for new follows
- **Service Integration**: Uses NotificationService for consistency

### Users App
- **Profile Integration**: Links notifications to user profiles
- **Authentication**: Uses custom user authentication system

### Future Integrations
- **Real-time Updates**: WebSocket integration for live notifications
- **Email Notifications**: Email delivery for important notifications
- **Push Notifications**: Mobile push notification support

## Monitoring & Logging

### Key Metrics
- **Notification Volume**: Track notifications created per day/hour
- **Read Rates**: Monitor notification read/unread ratios
- **Response Times**: Track API response times
- **Error Rates**: Monitor failed notification creations

### Logging
- **Creation Events**: Log all notification creation events
- **Error Tracking**: Log signal handler errors and failures
- **Performance**: Track slow queries and operations

### Health Checks
- **Service Availability**: Monitor notification service health
- **Database Performance**: Track notification query performance
- **Signal Processing**: Monitor signal handler execution

## Future Enhancements

### Planned Features
- **Real-time Notifications**: WebSocket-based live updates
- **Email Integration**: Email notifications for important events
- **Push Notifications**: Mobile app push notification support
- **Notification Preferences**: User-configurable notification settings
- **Digest Notifications**: Daily/weekly notification summaries

### Technical Improvements
- **Advanced Caching**: Redis-based caching for better performance
- **Message Queues**: Async notification processing with Celery
- **Notification Templates**: Template-based notification formatting
- **Analytics Integration**: Detailed notification analytics
- **Rate Limiting**: Prevent notification spam

### User Experience
- **Rich Notifications**: Support for rich media in notifications
- **Notification Grouping**: Group related notifications together
- **Smart Filtering**: AI-based notification relevance filtering
- **Cross-Platform Sync**: Sync notification status across devices

## Conclusion

The Notifications app provides a robust, flexible, and scalable notification system for BookNest. It leverages Django's ContentType framework for maximum flexibility while maintaining clean separation of concerns through a service-oriented architecture.

Key strengths include:
- **Flexibility**: Generic relations support any type of notification
- **Automation**: Signal-based automatic notification creation
- **Security**: Comprehensive permission and authentication system
- **Performance**: Optimized queries and caching strategies
- **Extensibility**: Easy to add new notification types and triggers

The app provides a solid foundation for user engagement and can be easily extended with real-time features, email integration, and advanced user preferences as the platform grows.