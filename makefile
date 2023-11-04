all: up

build:
	@sudo docker compose -f ./srcs/docker-compose.yml up --build

up:
	@sudo docker compose -f ./srcs/docker-compose.yml up

down:
	@sudo docker compose -f ./srcs/docker-compose.yml down

prune: down
	@sudo docker volume rm srcs_db_data
	@sudo docker volume rm srcs_wp_content
	@sudo docker system prune -a --force

clean:
	@sudo rm -rf /home/adinari/wp_content
	@sudo rm -rf /home/adinari/db_data

pclean: prune clean

re: pclean build

.PHONY: all build up down prune clean pclean re