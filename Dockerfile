FROM node:12.13-alpine

WORKDIR /app

COPY package*.json tsconfig.json ./

RUN npm install

COPY ./dist ./dist

CMD [ "npm", "run", "start:dev" ]
