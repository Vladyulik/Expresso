FROM node:22.2.0-bullseye

WORKDIR /app

COPY ./package.json .

RUN npm install

COPY ./app.js .

CMD ["node", "./app.js"]
