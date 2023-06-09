
COMPOSE_FILE = ./srcs/docker-compose.yml

all: up

up:
	@docker-compose -f $(COMPOSE_FILE) up

down:
	@docker-compose -f $(COMPOSE_FILE) down

build:
	@docker-compose -f $(COMPOSE_FILE) build

clean:
	@docker-compose -f $(COMPOSE_FILE) down -v

fclean: clean
	@docker system prune -a
re: clean
	@docker-compose -f $(COMPOSE_FILE) up --build

.PHONY: up down build re clean