FROM node:alpine

WORKDIR /app

COPY ./package.json /app/

COPY backend/ /app/

RUN npm install

ENTRYPOINT node index.js