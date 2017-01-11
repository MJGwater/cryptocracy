FROM node:7.4-alpine

# Install build tools to compile native npm modules
RUN apk add --update build-base python

# Create app directory
RUN mkdir /usr/local/deepstream/
WORKDIR /usr/local/deepstream
RUN npm install

CMD [ "node", "node_modules/.bin/deepstream"]
