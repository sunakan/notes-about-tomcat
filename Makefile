DC = sudo docker-compose

build:
	@$(DC) build

# make bash
bash:
	@$(DC) run --rm -p 8983:8983 app bash

chown:
	sudo chown -R ${USER}:${USER} .
