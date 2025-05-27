# BookNest - Django REST API Project Documentation

## Project Overview

**BookNest** is a comprehensive book management and social reading platform built with Django REST Framework, serving as a modern alternative to Goodreads. The platform enables users to discover, rate, review, and manage their reading experiences while connecting with other book enthusiasts.

## Team Information

- **Project Lead**: [Team Member Name]
- **Backend Developer**: [Team Member Name]
- **Frontend Developer**: [Team Member Name]
- **Database Administrator**: [Team Member Name]
- **Project Manager**: [Team Member Name]

## Technology Stack

### Backend Framework
- **Django 5.1.2**: High-level Python web framework
- **Django REST Framework 3.15.2**: Powerful toolkit for building Web APIs
- **Python**: Primary programming language

### Database
- **PostgreSQL**: Primary database for production
- **Database Name**: BookNestV3

### Authentication & Authorization
- **JWT (JSON Web Tokens)**: Token-based authentication
- **django-allauth 65.7.0**: Comprehensive authentication system
- **dj-rest-auth 7.0.1**: REST API authentication
- **djangorestframework-simplejwt 5.5.0**: JWT implementation

### Media Storage
- **Cloudinary**: Cloud-based image and video management
- **cloudinary-storage**: Django integration for Cloudinary

### API Documentation
- **drf-spectacular 0.28.0**: OpenAPI 3.0 schema generation
- **Swagger UI**: Interactive API documentation
- **ReDoc**: Alternative API documentation interface

### Additional Libraries
- **django-cors-headers 4.7.0**: Cross-Origin Resource Sharing handling
- **Celery 5.5.2**: Distributed task queue
- **scikit-surprise**: Machine learning library for recommendation system
- **pandas & numpy**: Data processing for recommendations

## System Architecture

### Application Structure
The BookNest project follows Django's modular app architecture with the following core applications:

1. **users**: User management, authentication, and profiles
2. **books**: Book catalog, authors, genres, and metadata
3. **follows**: Social following system between users
4. **notifications**: Real-time notification system
5. **recommendation**: AI-powered book recommendation engine

### Database Schema Overview
The system uses a relational database design with the following key entities:
- Users and Profiles (One-to-One relationship)
- Books and Authors (Many-to-Many relationship)
- Reviews and Ratings (User-Book relationships)
- Reading Lists (User book collections)
- Follow relationships (User-User social connections)
- Notifications (Generic content type system)

## Installation Guide

### Prerequisites
- Python 3.10 or higher
- PostgreSQL 12 or higher
- Git
- Virtual environment tool (venv or virtualenv)

### Step-by-Step Installation

#### 1. Clone the Repository
```bash
git clone https://github.com/JinxX404/BookNest
cd BookNest
```

#### 2. Create Virtual Environment
```bash
# Create virtual environment
python -m venv booknest_env

# Activate virtual environment
# On Windows:
booknest_env\Scripts\activate
# On macOS/Linux:
source booknest_env/bin/activate
```

#### 3. Install Dependencies
```bash
pip install -r req.txt
```

#### 4. Environment Configuration
```bash
# Copy environment template
cp .env.example .env
```

Edit the `.env` file with your configuration:
```env
# Database Configuration
DB_NAME=BookNestV3
DB_USER=postgres
DB_PASSWORD=your_secure_password
DB_HOST=localhost
DB_PORT=5432

# Django Configuration
SECRET_KEY=your_django_secret_key
DEBUG=True
ALLOWED_HOSTS=localhost,127.0.0.1

# Cloudinary Configuration
CLOUDINARY_CLOUD_NAME=your_cloud_name
CLOUDINARY_API_KEY=your_api_key
CLOUDINARY_API_SECRET=your_api_secret
```

#### 5. Database Setup
```bash
# Create database migrations
python manage.py makemigrations

# Apply migrations
python manage.py migrate

# Create superuser account
python manage.py createsuperuser
```

#### 6. Run Development Server
```bash
python manage.py runserver
```

### Docker Installation (Alternative)

#### Basic Setup
```bash
# Build and run with Docker Compose
docker-compose up --build
```

#### Full Setup with All Services
```bash
# Include pgAdmin and Redis
docker-compose --profile admin --profile cache up --build
```

## Project Structure

```
BookNest/
├── BookNest/                 # Main project configuration
│   ├── settings.py          # Django settings
│   ├── urls.py              # Main URL configuration
│   ├── wsgi.py              # WSGI configuration
│   └── asgi.py              # ASGI configuration
├── users/                    # User management app
│   ├── models/              # User and Profile models
│   ├── serializers/         # API serializers
│   ├── views/               # API views
│   └── urls.py              # User-related URLs
├── books/                    # Book management app
│   ├── models.py            # Book, Author, Review models
│   ├── serializers/         # Book-related serializers
│   ├── views/               # Book API views
│   └── urls.py              # Book-related URLs
├── follows/                  # Social following system
├── notifications/            # Notification system
├── recommendation/           # AI recommendation engine
├── media/                    # Media files storage
├── logs/                     # Application logs
├── requirements.txt          # Python dependencies
├── docker-compose.yml        # Docker configuration
└── manage.py                # Django management script
```

## Authentication Flow

### JWT Token-Based Authentication
The system uses JSON Web Tokens (JWT) for stateless authentication:

1. **Registration**: Users register with username, email, and password
2. **Login**: Credentials are validated and JWT tokens are issued
3. **Token Usage**: Access token included in Authorization header
4. **Token Refresh**: Refresh tokens used to obtain new access tokens
5. **Logout**: Tokens are blacklisted for security

### Token Configuration
- **Access Token Lifetime**: 60 minutes
- **Refresh Token Lifetime**: 7 days
- **Algorithm**: HS512
- **Token Rotation**: Disabled
- **Blacklisting**: Enabled after logout

## API Overview

### Base URL
- **Development**: `http://localhost:8000/api/`
- **API Documentation**: `http://localhost:8000/swagger/`
- **Admin Panel**: `http://localhost:8000/admin/`

### Main API Endpoints by App

#### Users API (`/api/users/`)
- User registration and authentication
- Profile management
- Profile picture upload
- User details and settings

#### Books API (`/api/books/`)
- Book catalog and search
- Author management
- Book reviews and ratings
- Reading lists
- Book suggestions

#### Follow API (`/api/follow/`)
- User following/unfollowing
- Follower/following lists
- Social connections

#### Notifications API (`/api/notifications/`)
- User notifications
- Notification preferences
- Mark as read/unread

#### Recommendations API (`/api/recommendation/`)
- Personalized book recommendations
- Recommendation model management
- Manual recommendation triggers

## Special Features

### 1. AI-Powered Recommendation System
- **Collaborative Filtering**: Using SVD and KNN algorithms
- **Real-time Recommendations**: Based on user ratings and preferences
- **Model Training**: Automated retraining with new data
- **Performance Metrics**: RMSE and MAE tracking

### 2. Advanced Search and Filtering
- **Full-text Search**: Book titles and descriptions
- **Multi-criteria Filtering**: By genre, author, rating, publication date
- **Pagination**: Efficient data loading
- **Sorting Options**: Multiple sorting criteria

### 3. Social Features
- **User Following**: Social connections between readers
- **Review Voting**: Upvote/downvote system for reviews
- **Reading Lists**: Public and private book collections
- **Activity Notifications**: Real-time updates on social interactions

### 4. Media Management
- **Cloudinary Integration**: Optimized image storage and delivery
- **Profile Pictures**: Automatic resizing and optimization
- **Book Covers**: External URL support with fallbacks

### 5. Security Features
- **JWT Authentication**: Secure token-based authentication
- **CORS Configuration**: Cross-origin request handling
- **Input Validation**: Comprehensive data validation
- **Rate Limiting**: API abuse prevention

## Testing Instructions

### Running Django Tests
```bash
# Run all tests
python manage.py test

# Run tests for specific app
python manage.py test users
python manage.py test books

# Run with coverage
coverage run --source='.' manage.py test
coverage report
```

### API Testing with Postman
1. Import the API schema from `/schema/` endpoint
2. Set up environment variables for base URL and tokens
3. Test authentication endpoints first
4. Use obtained tokens for protected endpoints

### Manual Testing Checklist
- [ ] User registration and login
- [ ] Profile creation and updates
- [ ] Book search and filtering
- [ ] Review and rating submission
- [ ] Following/unfollowing users
- [ ] Notification system
- [ ] Recommendation generation

## Deployment Guide

### Local Development
```bash
# Install dependencies
pip install -r req.txt

# Run migrations
python manage.py migrate

# Start development server
python manage.py runserver
```

### Production Deployment

#### Environment Variables
```env
DEBUG=False
ALLOWED_HOSTS=your-domain.com
DATABASE_URL=postgresql://user:pass@host:port/dbname
CLOUDINARY_URL=cloudinary://api_key:api_secret@cloud_name
```

#### Static Files
```bash
# Collect static files
python manage.py collectstatic
```

#### Database Migration
```bash
# Apply migrations in production
python manage.py migrate --settings=BookNest.production_settings
```

### Docker Deployment
```bash
# Build production image
docker build -t booknest:latest .

# Run with docker-compose
docker-compose -f docker-compose.prod.yml up -d
```

## Database Schema

### Core Tables
- **auth_user**: Django's built-in user model
- **users_profile**: Extended user profiles
- **book**: Book catalog with metadata
- **author**: Author information
- **book_rating**: User ratings for books
- **book_review**: User reviews for books
- **reading_list**: User's book collections
- **follow**: User following relationships
- **notification**: System notifications

### Relationships
- Users have one Profile (One-to-One)
- Books have multiple Authors (Many-to-Many)
- Users can rate/review multiple Books (Many-to-Many)
- Users can follow multiple Users (Many-to-Many)
- Notifications use Generic Foreign Keys

## Performance Considerations

### Database Optimization
- **Indexes**: Strategic indexing on frequently queried fields
- **Query Optimization**: Use of select_related and prefetch_related
- **Connection Pooling**: Efficient database connection management

### Caching Strategy
- **Redis Integration**: Available for caching frequently accessed data
- **Query Caching**: Database query result caching
- **API Response Caching**: Endpoint-level caching

### Scalability
- **Horizontal Scaling**: Stateless design supports load balancing
- **Microservices Ready**: Modular app structure
- **Background Tasks**: Celery for heavy computations

## Security Best Practices

### Authentication Security
- JWT token expiration and rotation
- Secure password validation
- Account lockout mechanisms

### Data Protection
- Input sanitization and validation
- SQL injection prevention
- XSS protection
- CSRF protection

### API Security
- Rate limiting
- CORS configuration
- HTTPS enforcement (production)
- Sensitive data masking in logs

## Monitoring and Logging

### Logging Configuration
- **Debug Logs**: Development debugging information
- **Error Logs**: Production error tracking
- **Access Logs**: API request logging
- **Recommendation Logs**: ML model performance tracking

### Health Monitoring
- Database connection health
- External service availability
- Performance metrics tracking

## Future Improvements

### Planned Features
1. **Real-time Chat**: Book discussion rooms
2. **Advanced Analytics**: Reading habit insights
3. **Mobile App**: React Native companion app
4. **Book Clubs**: Group reading features
5. **Author Profiles**: Enhanced author interaction

### Technical Enhancements
1. **GraphQL API**: Alternative to REST
2. **Elasticsearch**: Advanced search capabilities
3. **Redis Caching**: Performance optimization
4. **Kubernetes**: Container orchestration
5. **CI/CD Pipeline**: Automated deployment

## Conclusion

BookNest represents a modern, scalable approach to building a social reading platform. The Django REST Framework foundation provides robust API capabilities, while the modular architecture ensures maintainability and extensibility. The integration of AI-powered recommendations, social features, and comprehensive book management creates a compelling alternative to existing platforms.

The project demonstrates best practices in:
- RESTful API design
- Database modeling and optimization
- Authentication and security
- Testing and documentation
- Deployment and scalability

This documentation serves as both an academic reference for graduation project evaluation and a practical guide for frontend developers integrating with the BookNest API.

---

**Document Version**: 1.0  
**Last Updated**: [Current Date]  
**Prepared By**: [Team Name]  
**Project Repository**: https://github.com/JinxX404/BookNest