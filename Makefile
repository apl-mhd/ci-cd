PROJECT_NAME=web

DC=sudo docker compose

build:
	$(DC) build

up:
	$(DC) up -d

down:
	$(DC) down

restart:
	$(DC) down 
	$(DC) up -d

