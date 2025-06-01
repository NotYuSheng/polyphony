# Makefile for poly project

SERVICE=poly-auth
DB_CONTAINER=poly-postgres-auth

.PHONY: help up down build restart logs shell alembic-init alembic-rev alembic-upgrade

help:
	@echo "Usage:"
	@echo "  make up               - Start all services"
	@echo "  make down             - Stop and remove all services"
	@echo "  make build            - Build the containers"
	@echo "  make restart          - Restart services"
	@echo "  make logs             - Show logs for auth service"
	@echo "  make shell            - Bash into the auth container"
	@echo "  make alembic-init     - Run alembic init inside container"
	@echo "  make alembic-rev msg='Message' - Create a new migration"
	@echo "  make alembic-upgrade  - Run alembic upgrade head"

up:
	docker-compose up -d

down:
	docker-compose down

build:
	docker-compose build

restart:
	docker-compose down && docker-compose up -d

logs:
	docker-compose logs -f $(SERVICE)

shell:
	docker-compose exec $(SERVICE) sh

alembic-init:
	docker-compose run --rm $(SERVICE) alembic init alembic

alembic-rev:
	docker-compose run --rm $(SERVICE) alembic revision --autogenerate -m "$(msg)"

alembic-upgrade:
	docker-compose run --rm $(SERVICE) alembic upgrade head