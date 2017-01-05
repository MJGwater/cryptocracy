# Cryptocracy Server Config #
## Development ##
To get your development environment up and running on a mac, [download](https://download.docker.com/mac/stable/Docker.dmg) and [install](https://docs.docker.com/docker-for-mac/) docker.

Once Docker is up and running, open a terminal window and run: 
```git clone https://github.com/CryptocracyExchange/cryptocracy.git && cd ./cryptocracy && docker-compose up``` When the server, database, and search provider are up and running, you can then connect your client directly to deepstream. To kill the server press ```ctrl+c```, and run ```docker-compose up``` to get it started again.

## Production ##
TBD...