FROM node:alpine

WORKDIR /app

RUN npm install -g http-server

COPY frontend/ /app/

ENTRYPOINT http-server 