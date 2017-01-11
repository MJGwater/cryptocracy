# Cryptocracy #
## Development ##
1. On a mac, [download](https://download.docker.com/mac/stable/Docker.dmg) and [install](https://docs.docker.com/docker-for-mac/) docker.
2. Clone the repo that you want to work on to your local machine.
3. Clone down the main server repo (this one).
3. Edit the docker-compose-development.yml script to mount your local code repo folder to the appropriate docker container.
4. Run ```docker-compose -f [path to docker-compose-development.yml] up```
5. You can access an awesome RethinkDB GUI at [http://localhost:8080](http://localhost:8080).
6. To bring down the application run ```docker-compose down -v```