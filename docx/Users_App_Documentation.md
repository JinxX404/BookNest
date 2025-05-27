# Users App Documentation - BookNest

## App Overview

**App Name**: users  
**Purpose**: User management, authentication, and profile system  
**Primary Functions**: User registration, login/logout, profile management, profile picture uploads

The Users app is the foundation of the BookNest platform, handling all user-related functionality including authentication, profile management, and user settings. It extends Django's built-in User model with a comprehensive Profile system that supports social features and personalization.

## API Endpoints Documentation

### Base URL: `/api/users/`

---

### 1. User Registration

**URL**: `/api/users/register/`  
**Method**: `POST`  
**Description**: Register a new user account  
**Authorization Required**: No

#### Request Parameters

**Request Body (JSON)**:
```json
{
  "username": "string",
  "email": "string",
  "password1": "string",
  "password2": "string"
}
```

#### Field Requirements
- `username`: Required, unique, 3-150 characters
- `email`: Required, valid email format, unique
- `password1`: Required, minimum 8 characters
- `password2`: Required, must match password1

#### Example Request
```json
{
  "username": "bookworm123",
  "email": "user@example.com",
  "password1": "securepassword123",
  "password2": "securepassword123"
}
```

#### Example Response (201 Created)
```json
{
  "access": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9...",
  "refresh": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9...",
  "user": {
    "pk": 1,
    "username": "bookworm123",
    "email": "user@example.com",
    "first_name": "",
    "last_name": ""
  }
}
```

#### Status Codes
- `201`: User created successfully
- `400`: Validation errors (username taken, passwords don't match, etc.)

---

### 2. User Login

**URL**: `/api/users/login/`  
**Method**: `POST`  
**Description**: Authenticate user and receive JWT tokens  
**Authorization Required**: No

#### Request Parameters

**Request Body (JSON)**:
```json
{
  "username": "string",
  "password": "string"
}
```

#### Example Request
```json
{
  "username": "bookworm123",
  "password": "securepassword123"
}
```

#### Example Response (200 OK)
```json
{
  "access": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9...",
  "refresh": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9...",
  "user": {
    "pk": 1,
    "username": "bookworm123",
    "email": "user@example.com",
    "first_name": "",
    "last_name": ""
  }
}
```

#### Status Codes
- `200`: Login successful
- `400`: Invalid credentials
- `401`: Authentication failed

---

### 3. User Logout

**URL**: `/api/users/logout/`  
**Method**: `POST`  
**Description**: Logout user and blacklist tokens  
**Authorization Required**: Yes

#### Request Headers
```
Authorization: Bearer <access_token>
```

#### Request Body (JSON)
```json
{
  "refresh": "refresh_token_here"
}
```

#### Example Response (200 OK)
```json
{
  "detail": "Successfully logged out."
}
```

#### Status Codes
- `200`: Logout successful
- `401`: Invalid or expired token

---

### 4. Get User Details

**URL**: `/api/users/user/`  
**Method**: `GET`  
**Description**: Get current authenticated user details  
**Authorization Required**: Yes

#### Request Headers
```
Authorization: Bearer <access_token>
```

#### Example Response (200 OK)
```json
{
  "pk": 1,
  "username": "bookworm123",
  "email": "user@example.com",
  "first_name": "John",
  "last_name": "Doe"
}
```

#### Status Codes
- `200`: Success
- `401`: Unauthorized

---

### 5. Token Verification

**URL**: `/api/users/token/verify/`  
**Method**: `POST`  
**Description**: Verify if a JWT token is valid  
**Authorization Required**: No

#### Request Body (JSON)
```json
{
  "token": "access_token_here"
}
```

#### Example Response (200 OK)
```json
{}
```

#### Status Codes
- `200`: Token is valid
- `401`: Token is invalid or expired

---

### 6. Token Refresh

**URL**: `/api/users/token/refresh/`  
**Method**: `POST`  
**Description**: Get new access token using refresh token  
**Authorization Required**: No

#### Request Body (JSON)
```json
{
  "refresh": "refresh_token_here"
}
```

#### Example Response (200 OK)
```json
{
  "access": "new_access_token_here"
}
```

#### Status Codes
- `200`: New token issued
- `401`: Invalid refresh token

---

### 7. Get User Profile

**URL**: `/api/users/profile/me/`  
**Method**: `GET`  
**Description**: Get current user's profile information  
**Authorization Required**: Yes

#### Request Headers
```
Authorization: Bearer <access_token>
```

#### Example Response (200 OK)
```json
{
  "id": 1,
  "user": {
    "id": 1,
    "username": "bookworm123",
    "email": "user@example.com",
    "first_name": "John",
    "last_name": "Doe"
  },
  "profile_pic": "https://res.cloudinary.com/dvrr5avgu/image/upload/v1234567890/profile_pics/user_123.jpg",
  "bio": "Passionate reader and book reviewer",
  "profile_type": "REGULAR",
  "settings": {
    "notifications_enabled": true,
    "public_reading_lists": true
  },
  "interests": [
    {
      "id": 1,
      "interest": "Science Fiction"
    },
    {
      "id": 2,
      "interest": "Fantasy"
    }
  ],
  "social_links": [
    {
      "id": 1,
      "platform": "TWITTER",
      "url": "https://twitter.com/bookworm123"
    }
  ],
  "created_at": "2024-01-15T10:30:00Z",
  "updated_at": "2024-01-20T14:45:00Z"
}
```

#### Status Codes
- `200`: Success
- `401`: Unauthorized
- `404`: Profile not found

---

### 8. Update User Profile

**URL**: `/api/users/profile/me/`  
**Method**: `PATCH`  
**Description**: Update current user's profile information  
**Authorization Required**: Yes

#### Request Headers
```
Authorization: Bearer <access_token>
Content-Type: application/json
```

#### Request Body (JSON)
```json
{
  "bio": "Updated bio text",
  "profile_type": "AUTHOR",
  "settings": {
    "notifications_enabled": false,
    "public_reading_lists": true
  }
}
```

#### Example Response (200 OK)
```json
{
  "id": 1,
  "user": {
    "id": 1,
    "username": "bookworm123",
    "email": "user@example.com",
    "first_name": "John",
    "last_name": "Doe"
  },
  "bio": "Updated bio text",
  "profile_type": "AUTHOR",
  "settings": {
    "notifications_enabled": false,
    "public_reading_lists": true
  },
  "updated_at": "2024-01-21T09:15:00Z"
}
```

#### Status Codes
- `200`: Profile updated successfully
- `400`: Validation errors
- `401`: Unauthorized

---

### 9. Upload Profile Picture

**URL**: `/api/users/profiles/upload-picture/`  
**Method**: `POST`  
**Description**: Upload or update user's profile picture  
**Authorization Required**: Yes

#### Request Headers
```
Authorization: Bearer <access_token>
Content-Type: multipart/form-data
```

#### Request Parameters

**Form Data**:
- `profile_pic`: Image file (JPG, PNG, GIF)
- Maximum file size: 5MB
- Recommended dimensions: 400x400px

#### Example Response (200 OK)
```json
{
  "message": "Profile picture uploaded successfully",
  "profile_pic_url": "https://res.cloudinary.com/dvrr5avgu/image/upload/v1234567890/profile_pics/user_123.jpg"
}
```

#### Status Codes
- `200`: Upload successful
- `400`: Invalid file format or size
- `401`: Unauthorized

---

### 10. Get All Profiles (List)

**URL**: `/api/users/profile/`  
**Method**: `GET`  
**Description**: Get paginated list of user profiles  
**Authorization Required**: Yes

#### Query Parameters
- `page`: Page number (default: 1)
- `page_size`: Items per page (default: 20, max: 100)
- `search`: Search by username or bio
- `profile_type`: Filter by profile type (REGULAR, AUTHOR, PUBLISHER)

#### Example Request
```
GET /api/users/profile/?page=1&page_size=10&search=book&profile_type=AUTHOR
```

#### Example Response (200 OK)
```json
{
  "count": 25,
  "next": "http://localhost:8000/api/users/profile/?page=2",
  "previous": null,
  "results": [
    {
      "id": 1,
      "user": {
        "username": "author123",
        "first_name": "Jane",
        "last_name": "Smith"
      },
      "profile_pic": "https://res.cloudinary.com/dvrr5avgu/image/upload/v1234567890/profile_pics/author_123.jpg",
      "bio": "Published author of 5 novels",
      "profile_type": "AUTHOR",
      "created_at": "2024-01-10T08:00:00Z"
    }
  ]
}
```

#### Status Codes
- `200`: Success
- `401`: Unauthorized

---

## Models Documentation

### CustomUser Model

**Purpose**: Extended Django User model with custom manager  
**Table**: `auth_user` (Django default)

#### Fields
- `id`: Primary key (auto-generated)
- `username`: Unique username (max 150 chars)
- `email`: Email address (unique)
- `first_name`: User's first name (optional)
- `last_name`: User's last name (optional)
- `is_active`: Account status (boolean)
- `is_staff`: Staff status (boolean)
- `is_superuser`: Superuser status (boolean)
- `date_joined`: Account creation timestamp
- `last_login`: Last login timestamp

#### Custom Methods
- `delete()`: Overridden to clean up JWT tokens on deletion

### Profile Model

**Purpose**: Extended user profile information  
**Table**: `users_profile`

#### Fields
- `id`: Primary key (auto-generated)
- `user`: One-to-one relationship with CustomUser
- `profile_pic`: Cloudinary image field for profile picture
- `bio`: Text field for user biography (max 500 chars)
- `profile_type`: Choice field (REGULAR, AUTHOR, PUBLISHER)
- `settings`: JSON field for user preferences
- `created_at`: Profile creation timestamp
- `updated_at`: Last update timestamp

#### Profile Type Choices
- `REGULAR`: Standard user account
- `AUTHOR`: Author/writer account
- `PUBLISHER`: Publisher account

### ProfileInterest Model

**Purpose**: User interests and preferences  
**Table**: `users_profileinterest`

#### Fields
- `id`: Primary key (auto-generated)
- `profile`: Foreign key to Profile
- `interest`: Interest name (max 100 chars)

#### Constraints
- Unique together: (profile, interest)

### ProfileSocialLink Model

**Purpose**: User's social media links  
**Table**: `users_profilesociallink`

#### Fields
- `id`: Primary key (auto-generated)
- `profile`: Foreign key to Profile
- `platform`: Choice field for social platform
- `url`: URL field for the social link

#### Platform Choices
- `TWITTER`: Twitter profile
- `FACEBOOK`: Facebook profile
- `INSTAGRAM`: Instagram profile
- `LINKEDIN`: LinkedIn profile
- `GITHUB`: GitHub profile
- `WEBSITE`: Personal website

#### Constraints
- Unique together: (profile, platform)

## Serializers Documentation

### CustomRegisterSerializer

**Purpose**: Handle user registration with validation  
**File**: `users/serializers/auth_serializer.py`

#### Features
- Email uniqueness validation
- Password confirmation matching
- Custom error messages
- Automatic profile creation

### ProfileSerializer

**Purpose**: Serialize profile data for API responses  
**Features**:
- Nested user data
- Interest and social link serialization
- Read/write field separation
- Image URL generation

## Views Documentation

### CustomRegisterView

**Purpose**: Handle user registration  
**Type**: APIView  
**Authentication**: Not required

#### Features
- Custom registration logic
- JWT token generation
- Profile auto-creation
- Email validation

### CustomLoginView

**Purpose**: Handle user authentication  
**Type**: APIView  
**Authentication**: Not required

#### Features
- JWT token generation
- User validation
- Login attempt tracking

### ProfileViewSet

**Purpose**: Handle profile CRUD operations  
**Type**: ViewSet  
**Authentication**: Required

#### Actions
- `list`: Get all profiles (paginated)
- `retrieve`: Get specific profile
- `me`: Get current user's profile
- `partial_update`: Update profile fields
- `upload_picture`: Handle profile picture uploads

#### Permissions
- Authenticated users can view profiles
- Users can only edit their own profiles
- Profile pictures require authentication

## Authentication & Permissions

### JWT Configuration

```python
SIMPLE_JWT = {
    "ACCESS_TOKEN_LIFETIME": timedelta(minutes=60),
    "REFRESH_TOKEN_LIFETIME": timedelta(days=7),
    "ROTATE_REFRESH_TOKENS": False,
    "BLACKLIST_AFTER_ROTATION": False,
    "UPDATE_LAST_LOGIN": True,
    "SIGNING_KEY": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
    "ALGORITHM": "HS512",
}
```

### Permission Classes
- `IsAuthenticated`: Required for most profile operations
- `IsOwnerOrReadOnly`: Custom permission for profile editing

## Error Handling

### Common Error Responses

#### 400 Bad Request
```json
{
  "username": ["A user with that username already exists."],
  "email": ["Enter a valid email address."],
  "password1": ["This password is too short. It must contain at least 8 characters."]
}
```

#### 401 Unauthorized
```json
{
  "detail": "Given token not valid for any token type",
  "code": "token_not_valid",
  "messages": [
    {
      "token_class": "AccessToken",
      "token_type": "access",
      "message": "Token is invalid or expired"
    }
  ]
}
```

#### 404 Not Found
```json
{
  "detail": "Not found."
}
```

## Testing the Users App

### Unit Tests

```bash
# Run users app tests
python manage.py test users

# Run specific test class
python manage.py test users.tests.test_models

# Run with coverage
coverage run --source='users' manage.py test users
coverage report
```

### API Testing with Postman

#### Test Sequence
1. **Register User**: POST to `/api/users/register/`
2. **Login**: POST to `/api/users/login/` (save tokens)
3. **Get Profile**: GET to `/api/users/profile/me/`
4. **Update Profile**: PATCH to `/api/users/profile/me/`
5. **Upload Picture**: POST to `/api/users/profiles/upload-picture/`
6. **Logout**: POST to `/api/users/logout/`

#### Environment Variables for Postman
```
base_url: http://localhost:8000
access_token: {{access_token}}
refresh_token: {{refresh_token}}
```

### Manual Testing Checklist

- [ ] User registration with valid data
- [ ] User registration with invalid data (duplicate username/email)
- [ ] User login with correct credentials
- [ ] User login with incorrect credentials
- [ ] Token refresh functionality
- [ ] Profile retrieval for authenticated user
- [ ] Profile update with valid data
- [ ] Profile picture upload (various formats)
- [ ] Profile picture upload (oversized file)
- [ ] User logout and token blacklisting
- [ ] Access protected endpoints without token
- [ ] Access protected endpoints with expired token

## Security Considerations

### Password Security
- Minimum 8 characters required
- Django's built-in password validators
- Secure password hashing (PBKDF2)

### Token Security
- JWT tokens with expiration
- Refresh token rotation available
- Token blacklisting on logout
- Secure signing algorithm (HS512)

### File Upload Security
- File size limits (5MB)
- File type validation
- Cloudinary virus scanning
- Automatic image optimization

### Data Validation
- Email format validation
- Username uniqueness
- Input sanitization
- SQL injection prevention

## Performance Optimization

### Database Queries
- Use `select_related` for user-profile joins
- Pagination for profile lists
- Database indexes on frequently queried fields

### Caching Strategy
- Profile data caching (when Redis is available)
- Cloudinary CDN for profile images
- Token validation caching

### File Handling
- Cloudinary for image processing
- Automatic image resizing
- CDN delivery for global performance

---

**Document Version**: 1.0  
**Last Updated**: [Current Date]  
**App Version**: Compatible with BookNest v1.0  
**API Version**: v1