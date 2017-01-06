# Pull base image.
FROM mhart/alpine-node:6

MAINTAINER Phillipp Ohlandt, DeepstreamIO

RUN apk add --update python make g++

# Set default environment variables
ENV DEEPSTREAM_HOST=deepstream \
    DEEPSTREAM_PORT=6020 \
    DEEPSTREAM_AUTH_ROLE=provider \
    DEEPSTREAM_AUTH_USERNAME=rethinkdb-search-provider \
    PROVIDER_LISTNAME=search \
    PROVIDER_LOGLEVEL=3 \
    RETHINKDB_HOST=rethinkdb \
    RETHINKDB_PORT=28015 \
    RETHINKDB_DATABASE=deepstream

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install deepstream as an application dependency
RUN npm install deepstream.io-provider-search-rethinkdb@v2.0.0 --production

# Copy start script
COPY search-provider.js search-provider.js

# Define default command.
CMD [ "node", "search-provider" ]