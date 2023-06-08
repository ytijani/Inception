up: docker-compose up
down : docker-compose down
build: docker-compose build
clean : docker-compose down -v -remove-orphans
re : clean
	docker-compose up --build

.PHONY: up down build re clean