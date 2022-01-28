build:
	docker-compose build

up:
	docker-compose up -d
	docker stats

down:
	docker-compose down
