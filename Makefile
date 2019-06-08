DC = sudo docker-compose

build:
	@$(DC) build

bash:
	@$(DC) run --rm -p 8080:8080 -p 8983:8983 app bash -c "/usr/local/tomcat/bin/startup.sh && bash"
	#@$(DC) run --rm -p 8983:8983 app bash

chown:
	sudo chown -R ${USER}:${USER} .
