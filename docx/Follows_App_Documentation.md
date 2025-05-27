# Follows App Documentation

## Overview

The Follows app manages user follow relationships in the BookNest social reading platform. It enables users to follow and unfollow other users, creating a social network where users can discover content from people they're interested in.

## Features

- **Follow/Unfollow Users**: Users can follow and unfollow other users
- **Follower Management**: View who follows you and who you follow
- **User Discovery**: Browse followers and following lists of other users
- **Notification Integration**: Automatic notifications when someone follows you
- **Duplicate Prevention**: Prevents users from following themselves or creating duplicate follows

## API Endpoints

### Base URL
All endpoints are prefixed with `/api/follows/`

### Follow Management

#### 1. List Follow Relationships
- **Endpoint**: `GET /api/follows/`
- **Description**: Lists all follow relationships involving the current user
- **Authentication**: Required
- **Response**: List of follow relationships with detailed profile information

#### 2. Get Follow Relationship Details
- **Endpoint**: `GET /api/follows/{id}/`
- **Description**: Retrieves details of a specific follow relationship
- **Authentication**: Required
- **Parameters**:
  - `id`: Follow relationship ID

#### 3. Follow a User
- **Endpoint**: `POST /api/follows/create/`
- **Description**: Creates a new follow relationship
- **Authentication**: Required
- **Request Body**:
  ```json
  {
    "followed": 123  // Profile ID of user to follow
  }
  ```
- **Validations**:
  - Cannot follow yourself
  - Cannot follow the same user twice

#### 4. Unfollow a User
- **Endpoint**: `DELETE /api/follows/unfollow/{followed_id}/`
- **Description**: Removes a follow relationship (unfollows a user)
- **Authentication**: Required
- **Parameters**:
  - `followed_id`: Profile ID of user to unfollow

### Follower/Following Lists

#### 5. Get Your Followers
- **Endpoint**: `GET /api/follows/followers/`
- **Description**: Lists users who follow the current user
- **Authentication**: Required

#### 6. Get Who You Follow
- **Endpoint**: `GET /api/follows/following/`
- **Description**: Lists users that the current user follows
- **Authentication**: Required

#### 7. Get User's Followers
- **Endpoint**: `GET /api/follows/user/{user_id}/followers/`
- **Description**: Lists followers of a specific user
- **Authentication**: Required
- **Parameters**:
  - `user_id`: Profile ID of the user

#### 8. Get User's Following
- **Endpoint**: `GET /api/follows/user/{user_id}/following/`
- **Description**: Lists users that a specific user follows
- **Authentication**: Required
- **Parameters**:
  - `user_id`: Profile ID of the user

## Models

### Follow Model

The `Follow` model represents a follow relationship between two users.

```python
class Follow(models.Model):
    follower = models.ForeignKey(Profile, on_delete=models.CASCADE, related_name='following')
    followed = models.ForeignKey(Profile, on_delete=models.CASCADE, related_name='followers')
    created_at = models.DateTimeField(auto_now_add=True)
    
    class Meta:
        unique_together = ('follower', 'followed')
```

**Fields:**
- `follower`: The user who is following (ForeignKey to Profile)
- `followed`: The user being followed (ForeignKey to Profile)
- `created_at`: Timestamp when the follow relationship was created

**Constraints:**
- `unique_together`: Prevents duplicate follow relationships

## Serializers

### 1. FollowSerializer
- **Purpose**: Full follow relationship details with profile information
- **Fields**: `id`, `follower`, `followed`, `follower_detail`, `followed_detail`, `created_at`
- **Features**: Includes nested profile details for both follower and followed users

### 2. FollowCreateSerializer
- **Purpose**: Creating new follow relationships
- **Fields**: `followed`
- **Features**: Minimal serializer for follow creation

### 3. FollowerListSerializer
- **Purpose**: Listing followers with profile details
- **Fields**: `id`, `profile`, `created_at`
- **Features**: Includes follower profile information

### 4. FollowingListSerializer
- **Purpose**: Listing followed users with profile details
- **Fields**: `id`, `profile`, `created_at`
- **Features**: Includes followed user profile information

## Views

### 1. FollowListAPIView
- **Type**: `ListAPIView`
- **Purpose**: Lists all follow relationships for the current user
- **Permissions**: `IsAuthenticated`
- **Ordering**: Most recent first (`-created_at`)

### 2. FollowDetailAPIView
- **Type**: `RetrieveAPIView`
- **Purpose**: Retrieves specific follow relationship details
- **Permissions**: `IsAuthenticated`
- **Access Control**: Only relationships involving the current user

### 3. FollowCreateAPIView
- **Type**: `CreateAPIView`
- **Purpose**: Creates new follow relationships
- **Permissions**: `IsAuthenticated`
- **Validations**:
  - Prevents self-following
  - Prevents duplicate follows

### 4. FollowDeleteAPIView
- **Type**: `DestroyAPIView`
- **Purpose**: Removes follow relationships (unfollow)
- **Permissions**: `IsAuthenticated`
- **Method**: Custom delete logic with profile ID parameter

### 5. FollowerListAPIView
- **Type**: `ListAPIView`
- **Purpose**: Lists current user's followers
- **Permissions**: `IsAuthenticated`

### 6. FollowingListAPIView
- **Type**: `ListAPIView`
- **Purpose**: Lists users the current user follows
- **Permissions**: `IsAuthenticated`

### 7. UserFollowersAPIView
- **Type**: `ListAPIView`
- **Purpose**: Lists followers of any specific user
- **Permissions**: `IsAuthenticated`

### 8. UserFollowingAPIView
- **Type**: `ListAPIView`
- **Purpose**: Lists users that any specific user follows
- **Permissions**: `IsAuthenticated`

## Signal Handlers

### Follow Created Signal
- **Trigger**: When a new follow relationship is created
- **Action**: Creates a notification for the followed user
- **Integration**: Works with the notifications app
- **Notification Type**: `FOLLOW`

```python
@receiver(post_save, sender=Follow)
def follow_created(sender, instance, created, **kwargs):
    if created:
        NotificationService.create_notification(
            recipient=instance.followed.user,
            actor=instance.follower.user,
            verb='followed you',
            target=instance.followed,
            action_object=instance,
            notification_type=NotificationType.FOLLOW
        )
```

## Authentication & Permissions

### Authentication
- **Method**: JWT Token Authentication
- **Requirement**: All endpoints require authentication
- **Token**: Must be included in Authorization header

### Permissions
- **Base Permission**: `IsAuthenticated`
- **Access Control**: Users can only access their own follow relationships
- **Privacy**: All users can view public follower/following lists

## Error Handling

### Common Error Responses

#### 400 Bad Request
```json
{
  "error": "You cannot follow yourself"
}
```

```json
{
  "error": "You are already following this user"
}
```

#### 401 Unauthorized
```json
{
  "detail": "Authentication credentials were not provided."
}
```

#### 404 Not Found
```json
{
  "detail": "Not found."
}
```

## Usage Examples

### Follow a User
```bash
curl -X POST http://localhost:8000/api/follows/create/ \
  -H "Authorization: Bearer YOUR_JWT_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"followed": 123}'
```

### Get Your Followers
```bash
curl -X GET http://localhost:8000/api/follows/followers/ \
  -H "Authorization: Bearer YOUR_JWT_TOKEN"
```

### Unfollow a User
```bash
curl -X DELETE http://localhost:8000/api/follows/unfollow/123/ \
  -H "Authorization: Bearer YOUR_JWT_TOKEN"
```

## Testing

### Test Files
- `follows/tests/test_api.py`: API endpoint tests
- `follows/tests/test_models.py`: Model validation tests

### Test Coverage
- Follow creation and deletion
- Duplicate follow prevention
- Self-follow prevention
- Permission checks
- Signal functionality

### Running Tests
```bash
# Run all follows app tests
python manage.py test follows

# Run specific test file
python manage.py test follows.tests.test_api

# Run with coverage
coverage run --source='.' manage.py test follows
coverage report
```

## Security Considerations

### Data Protection
- **Authentication Required**: All endpoints require valid JWT tokens
- **User Isolation**: Users can only manage their own follow relationships
- **Input Validation**: All inputs are validated through serializers

### Privacy Controls
- **Public Lists**: Follower/following lists are publicly viewable
- **Profile Privacy**: Respects user profile privacy settings
- **Data Minimization**: Only necessary profile data is exposed

## Performance Optimization

### Database Optimization
- **Indexes**: Automatic indexes on foreign keys
- **Unique Constraints**: Prevents duplicate data
- **Efficient Queries**: Uses select_related for profile data

### Caching Strategies
- **Follower Counts**: Can be cached for performance
- **Popular Users**: Cache frequently accessed follower lists
- **Query Optimization**: Use prefetch_related for bulk operations

## Integration Points

### Notifications App
- **Follow Notifications**: Automatic notifications on new follows
- **Service Integration**: Uses NotificationService
- **Real-time Updates**: Can trigger real-time notifications

### Users App
- **Profile Integration**: Deep integration with user profiles
- **Authentication**: Uses custom user authentication
- **Permission System**: Integrates with user permission system

### Future Integrations
- **Activity Feed**: Follow relationships can drive content feeds
- **Recommendations**: Following data can improve book recommendations
- **Analytics**: Track follow patterns for insights

## Monitoring & Logging

### Key Metrics
- **Follow Rate**: New follows per day/week
- **Unfollow Rate**: Unfollows per day/week
- **Popular Users**: Most followed users
- **Engagement**: Follow-to-interaction ratios

### Logging
- **Follow Events**: Log all follow/unfollow actions
- **Error Tracking**: Monitor validation errors
- **Performance**: Track query performance

## Future Enhancements

### Planned Features
- **Follow Suggestions**: Recommend users to follow
- **Mutual Follows**: Identify mutual connections
- **Follow Categories**: Organize follows by categories
- **Privacy Controls**: Private/public follow lists
- **Bulk Operations**: Follow/unfollow multiple users

### Technical Improvements
- **Real-time Updates**: WebSocket integration for live updates
- **Advanced Caching**: Redis caching for follower counts
- **API Pagination**: Implement cursor-based pagination
- **Rate Limiting**: Prevent follow spam

## Conclusion

The Follows app provides a robust foundation for social interactions in BookNest. It handles user relationships efficiently while maintaining security and performance. The integration with notifications creates an engaging social experience, and the clean API design makes it easy to extend with additional features.

The app follows Django and DRF best practices, includes comprehensive error handling, and provides a solid base for building more advanced social features in the future.