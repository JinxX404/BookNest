# BookNest Docker Management
# Convenient commands for managing the BookNest application

.PHONY: help build up down logs shell db-shell migrate createsuperuser collectstatic clean restart

# Default target
help:
	@echo "BookNest Docker Management Commands:"
	@echo ""
	@echo "  make build          - Build the Docker containers"
	@echo "  make up             - Start the application (basic setup)"
	@echo "  make up-admin       - Start with pgAdmin"
	@echo "  make up-cache       - Start with Redis cache"
	@echo "  make up-full        - Start with all services"
	@echo "  make down           - Stop the application"
	@echo "  make logs           - View application logs"
	@echo "  make logs-db        - View database logs"
	@echo "  make shell          - Access Django container shell"
	@echo "  make db-shell       - Access PostgreSQL shell"
	@echo "  make migrate        - Run database migrations"
	@echo "  make createsuperuser - Create Django superuser"
	@echo "  make collectstatic  - Collect static files"
	@echo "  make restart        - Restart all services"
	@echo "  make clean          - Clean up containers and volumes"
	@echo "  make clean-all      - Clean everything including images"

# Build containers
build:
	docker-compose build

# Start services
up:
	docker-compose up

up-admin:
	docker-compose --profile admin up

up-cache:
	docker-compose --profile cache up

up-full:
	docker-compose --profile admin --profile cache up

# Start in background
up-d:
	docker-compose up -d

up-admin-d:
	docker-compose --profile admin up -d

up-cache-d:
	docker-compose --profile cache up -d

up-full-d:
	docker-compose --profile admin --profile cache up -d

# Stop services
down:
	docker-compose down

# View logs
logs:
	docker-compose logs -f web

logs-db:
	docker-compose logs -f db

logs-all:
	docker-compose logs -f

# Access shells
shell:
	docker-compose exec web bash

db-shell:
	docker-compose exec db psql -U postgres -d booknest_db

# Django management commands
migrate:
	docker-compose exec web python manage.py migrate

createsuperuser:
	docker-compose exec web python manage.py createsuperuser

collectstatic:
	docker-compose exec web python manage.py collectstatic --noinput

# Utility commands
restart:
	docker-compose restart

clean:
	docker-compose down -v
	docker system prune -f

clean-all:
	docker-compose down -v --rmi all
	docker system prune -a -f

# Development commands
dev-setup: build up-full migrate createsuperuser
	@echo "Development environment is ready!"
	@echo "Access the application at: http://localhost:8000"
	@echo "Access pgAdmin at: http://localhost:5050"
	@echo "Admin credentials: admin@booknest.com / admin123"

# Production commands
prod-build:
	docker-compose -f docker-compose.yml -f docker-compose.prod.yml build

prod-up:
	docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d

prod-down:
	docker-compose -f docker-compose.yml -f docker-compose.prod.yml down