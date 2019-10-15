#FROM node:12-alpine
FROM node:10
WORKDIR /app

COPY package*.json ./

RUN yarn install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]