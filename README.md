# Cryptocracy #

### Team

  - __Product Owner__: Mikel Duffy
  - __Scrum Master__: Matt Goldwater
  - __Team Members__: Harry Bellenie, Kai Hsia

## Synopsis

Make speedy and secure cryptocurrency trades.

## Development ##
1. On a mac, [download](https://download.docker.com/mac/stable/Docker.dmg) and [install](https://docs.docker.com/docker-for-mac/) docker.
2. Clone down the main server repo (this one) via ```git clone https://github.com/CryptocracyExchange/cryptocracy.git```.
3. Change into the main server repo and run ```docker pull cryptocracy/trade && \
docker pull cryptocracy/wallets && \
docker pull cryptocracy/accounts && \
docker pull cryptocracy/balances && \
docker pull cryptocracy/client && \
docker pull cryptocracy/server && \
docker pull cryptocracy/admin && \
docker pull cryptocracy/rethinkdb-search-provider && \
docker pull cryptocracy/dataanalysis && \
docker pull cryptocracy/trollbox```
4. To start the app run ```docker-compose -f [path to docker-compose-development.yml] up```
5. To interact with the database you can access an awesome RethinkDB GUI at [http://localhost:8080](http://localhost:8080).
6. To bring down the application run ```ctrl + c ``` then  ```docker-compose -f [path to docker-compose-development.yml] down -v```
