DC = sudo docker-compose

build:
	@$(DC) build

tomcat-bash:
	@$(DC) run --rm -p 8080:8080 tomcat bash -c "/usr/local/tomcat/bin/startup.sh && bash"

gradle-tomcat-bash:
	@$(DC) run --rm -p 8080:8080 gradle-tomcat bash

chown:
	sudo chown -R ${USER}:${USER} .
