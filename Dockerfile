FROM node:16.3.0-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT 3004

CMD [ "node", "app.js" ]
