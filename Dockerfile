FROM node:26-alpine3.23  AS build

WORKDIR /app

COPY package*.json ./

RUN npm install  # to install dependies

COPY . .

EXPOSE 3000

CMD [ "npm", "start"]