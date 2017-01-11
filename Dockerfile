FROM mhart/alpine-node:4

# Install build tools to compile native npm modules
RUN apk add --update build-base python

# Create app directory
RUN mkdir -p /usr/local/deepstream/conf && mkdir -p /usr/local/deepstream/var
WORKDIR /usr/local/deepstream

ADD ./conf/* /usr/local/deepstream/conf/

# Install deepstream as an application dependency
RUN npm install deepstream.io deepstream.io-logger-winston deepstream.io-msg-redis deepstream.io-cache-redis deepstream.io-storage-rethinkdb --production

# Define default command.
CMD [ "node", "node_modules/.bin/deepstream"]