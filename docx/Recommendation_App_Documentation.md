# Recommendation App Documentation

## Overview

The Recommendation app is a sophisticated machine learning-powered system that provides personalized book recommendations to users based on their rating history. It implements collaborative filtering algorithms (SVD and KNN) using the Surprise library to generate accurate and relevant book suggestions.

## Features

### Core Functionality
- **Machine Learning Models**: Supports SVD (Singular Value Decomposition) and KNN (K-Nearest Neighbors) algorithms
- **Model Training**: Automated and manual training of recommendation models
- **Personalized Recommendations**: User-specific book recommendations based on rating patterns
- **Fallback Recommendations**: Popularity-based recommendations for new users
- **Asynchronous Processing**: Background task processing using Celery
- **Model Management**: Storage and activation of multiple trained models
- **Performance Metrics**: RMSE and MAE evaluation metrics

### Automatic Triggers
- **Rating Threshold**: Automatically generates recommendations when users reach 22 ratings
- **Model Retraining**: Triggers new model training to include recent user data
- **Background Processing**: Uses Celery tasks for non-blocking operations

## API Endpoints

### Recommendation Management

#### Model Management
- **GET /api/recommendation/models/**: List all recommendation models
- **POST /api/recommendation/models/**: Create/train a new recommendation model
- **GET /api/recommendation/models/{id}/**: Retrieve specific model details
- **PUT /api/recommendation/models/{id}/**: Update model metadata
- **DELETE /api/recommendation/models/{id}/**: Delete a recommendation model
- **POST /api/recommendation/models/{id}/activate/**: Activate a specific model
- **POST /api/recommendation/models/{id}/train/**: Train a specific model

#### User Recommendations
- **GET /api/recommendation/user-recommendations/**: Get current user's recommendations
- **POST /api/recommendation/user-recommendations/**: Generate new recommendations for current user

#### Manual Triggers
- **POST /api/recommendation/trigger/**: Manually trigger recommendation generation
  - Parameters:
    - `async` (boolean): Use asynchronous processing (default: true)
    - `count` (integer): Number of recommendations to generate (default: 15)

#### Admin Views
- **GET /api/recommendation/admin/**: Administrative overview of recommendation system
- **POST /api/recommendation/admin/bulk-generate/**: Generate recommendations for multiple users

## Models

### RecommendationModel
Stores trained recommendation models and their metadata.

**Fields:**
- `model_type`: Type of algorithm ('svd' or 'knn')
- `created_at`: Model creation timestamp
- `updated_at`: Last update timestamp
- `is_active`: Whether the model is currently active
- `min_ratings_per_user`: Minimum ratings required for user inclusion
- `n_factors`: Number of factors for SVD model
- `knn_k`: Number of neighbors for KNN model
- `rmse`: Root Mean Square Error metric
- `mae`: Mean Absolute Error metric
- `model_file`: Serialized model file

### UserRecommendation
Stores precomputed recommendations for users.

**Fields:**
- `user`: Foreign key to User model
- `book`: Foreign key to Book model
- `score`: Predicted rating or recommendation score
- `recommended_at`: Timestamp of recommendation generation
- `model`: Foreign key to RecommendationModel used

## Serializers

### RecommendationModelSerializer
Serializes recommendation model metadata including performance metrics and configuration parameters.

### UserRecommendationSerializer
Serializes user-specific recommendations with book details including title, author, and cover image.

## Views

### RecommendationModelViewSet
- **Purpose**: Manage recommendation models
- **Permissions**: Admin only
- **Features**: CRUD operations, model training, activation
- **Async Support**: Model training via Celery tasks

### UserRecommendationViewSet
- **Purpose**: Retrieve user-specific recommendations
- **Permissions**: Authenticated users
- **Features**: Paginated recommendation lists, filtering by score

### Manual Trigger Views
- **Purpose**: Allow users to manually request recommendations
- **Requirements**: Minimum 10 ratings
- **Features**: Synchronous and asynchronous generation options

## Services

### RecommendationService
Core service class handling all recommendation operations.

**Key Methods:**
- `get_rating_data()`: Fetch and prepare rating data from BookRating model
- `train_recommendation_model()`: Train new models using RecommendationEngine
- `save_model_to_db()`: Serialize and store trained models
- `activate_model()`: Set a model as active
- `load_recommendation_model()`: Load trained models from storage
- `generate_recommendations_for_user()`: Generate user-specific recommendations
- `generate_recommendations_for_all_users()`: Bulk recommendation generation

## Recommendation Engine

### RecommendationEngine Class
Core machine learning component implementing collaborative filtering algorithms.

**Features:**
- **Algorithm Support**: SVD and KNN implementations
- **Data Preprocessing**: User filtering based on minimum ratings
- **Model Training**: Automated training with evaluation metrics
- **Prediction Generation**: User-specific and item-specific predictions
- **Fallback Mechanisms**: Popularity-based recommendations for new users

**Key Methods:**
- `train()`: Train the recommendation model
- `recommend_for_user()`: Generate recommendations for existing users
- `recommend_for_new_user()`: Fallback recommendations for new users
- `_filter_active_users()`: Filter users with sufficient ratings
- `_evaluate_model()`: Calculate performance metrics

## Background Tasks

### Celery Tasks

#### train_recommendation_model_task
- **Purpose**: Background model training
- **Parameters**: model_type, min_ratings_per_user, n_factors, knn_k
- **Returns**: Training status and model ID

#### generate_recommendations_for_user_task
- **Purpose**: Background recommendation generation for single user
- **Parameters**: user_id, n_recommendations, model_id
- **Returns**: Generation status and recommendation count

#### generate_recommendations_for_all_users_task
- **Purpose**: Bulk recommendation generation
- **Parameters**: n_recommendations, model_id, min_ratings
- **Returns**: Total recommendation count

## Signal Handlers

### Automatic Recommendation Triggers

#### trigger_recommendations_on_rating_threshold
- **Trigger**: When user reaches 22 ratings
- **Actions**:
  1. Train new model including user's data
  2. Generate recommendations using new model
  3. Fallback to synchronous generation if async fails
- **Logging**: Comprehensive logging for debugging

## Management Commands

### generate_recommendations
Command-line tool for generating recommendations.

**Options:**
- `--user-id`: Generate for specific user
- `--all`: Generate for all eligible users
- `--model-id`: Use specific model
- `--count`: Number of recommendations per user
- `--min-ratings`: Minimum ratings required

**Usage Examples:**
```bash
# Generate for specific user
python manage.py generate_recommendations --user-id 123 --count 15

# Generate for all users
python manage.py generate_recommendations --all --min-ratings 5

# Use specific model
python manage.py generate_recommendations --all --model-id 2
```

## Authentication & Permissions

### Permission Classes
- **IsAuthenticated**: Required for all user-facing endpoints
- **IsAdminUser**: Required for model management endpoints
- **Custom Permissions**: Users can only access their own recommendations

### Security Features
- User isolation for recommendations
- Admin-only model management
- Secure model file storage
- Input validation and sanitization

## Error Handling

### Common Error Scenarios
- **Insufficient Ratings**: Users with fewer than required ratings
- **Model Not Found**: Requests for non-existent models
- **Training Failures**: Model training errors with fallback mechanisms
- **Data Validation**: Invalid input parameters

### Error Responses
```json
{
  "status": "error",
  "message": "You need at least 10 book ratings to get recommendations.",
  "ratings_needed": 5
}
```

## Usage Examples

### Training a New Model
```python
from recommendation.services import RecommendationService

# Train SVD model
model = RecommendationService.train_recommendation_model(
    model_type='svd',
    min_ratings_per_user=5,
    n_factors=100
)
```

### Generating Recommendations
```python
# Generate for specific user
recommendations = RecommendationService.generate_recommendations_for_user(
    user_id=123,
    n_recommendations=10
)

# Generate for all users
count = RecommendationService.generate_recommendations_for_all_users(
    n_recommendations=10,
    min_ratings=5
)
```

### API Usage
```javascript
// Trigger recommendations
fetch('/api/recommendation/trigger/', {
  method: 'POST',
  headers: {
    'Authorization': 'Bearer ' + token,
    'Content-Type': 'application/json'
  },
  body: JSON.stringify({
    async: true,
    count: 15
  })
})

// Get user recommendations
fetch('/api/recommendation/user-recommendations/', {
  headers: {
    'Authorization': 'Bearer ' + token
  }
})
```

## Testing

### Test Coverage
- Model training and evaluation
- Recommendation generation
- API endpoint functionality
- Signal handler behavior
- Error handling scenarios
- Performance benchmarks

### Test Data Requirements
- Sufficient user rating data
- Multiple users with varying rating patterns
- Books with different popularity levels
- Edge cases (new users, sparse data)

## Performance Optimization

### Caching Strategies
- Model caching in memory
- Precomputed recommendations storage
- Database query optimization
- Bulk operations for efficiency

### Scalability Considerations
- Asynchronous processing for large datasets
- Incremental model updates
- Distributed training capabilities
- Memory-efficient data handling

### Monitoring Metrics
- Model training time
- Recommendation generation speed
- Memory usage during training
- API response times
- User engagement with recommendations

## Integration Points

### Dependencies
- **Books App**: BookRating model for training data
- **Users App**: User model for recommendations
- **Celery**: Background task processing
- **Surprise Library**: Machine learning algorithms
- **Django Storage**: Model file management

### External Services
- Redis/RabbitMQ for Celery message broker
- File storage system for model persistence
- Logging infrastructure for monitoring

## Configuration

### Settings
```python
# Recommendation settings
RECOMMENDATION_SETTINGS = {
    'MIN_RATINGS_THRESHOLD': 10,
    'AUTO_TRIGGER_THRESHOLD': 22,
    'DEFAULT_RECOMMENDATIONS_COUNT': 15,
    'MODEL_STORAGE_PATH': 'recommendation_models/',
    'CACHE_TIMEOUT': 3600,
}
```

### Environment Variables
- `CELERY_BROKER_URL`: Message broker configuration
- `MEDIA_ROOT`: Model file storage location
- `RECOMMENDATION_CACHE_TIMEOUT`: Cache duration

## Monitoring & Logging

### Logging Levels
- **INFO**: Normal operations, recommendation generation
- **WARNING**: Insufficient data, fallback scenarios
- **ERROR**: Training failures, system errors
- **DEBUG**: Detailed algorithm execution

### Metrics to Monitor
- Model accuracy (RMSE, MAE)
- Recommendation coverage
- User engagement rates
- System performance metrics
- Error rates and types

## Future Enhancements

### Planned Features
- **Deep Learning Models**: Neural collaborative filtering
- **Content-Based Filtering**: Genre and author-based recommendations
- **Hybrid Approaches**: Combining multiple recommendation strategies
- **Real-time Updates**: Streaming model updates
- **A/B Testing**: Recommendation algorithm comparison
- **Explainable AI**: Recommendation reasoning

### Scalability Improvements
- **Distributed Training**: Multi-node model training
- **Microservices Architecture**: Separate recommendation service
- **GraphQL API**: More flexible data fetching
- **Recommendation Diversity**: Ensuring varied suggestions
- **Cold Start Solutions**: Better handling of new users/items

## Troubleshooting

### Common Issues
1. **Model Training Fails**: Check data quality and quantity
2. **No Recommendations Generated**: Verify user has sufficient ratings
3. **Poor Recommendation Quality**: Retrain with more data or different parameters
4. **Performance Issues**: Optimize database queries and use caching
5. **Celery Tasks Stuck**: Check message broker connectivity

### Debug Commands
```bash
# Check model status
python manage.py shell -c "from recommendation.models import RecommendationModel; print(RecommendationModel.objects.all())"

# Test recommendation generation
python manage.py generate_recommendations --user-id 1 --count 5

# Check Celery worker status
celery -A booknest inspect active
```