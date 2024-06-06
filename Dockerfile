FROM node:22.2.0-alpine AS initial

WORKDIR /app

COPY ./package.json .

RUN npm install

COPY ./app.js .

FROM gcr.io/distroless/nodejs20-debian12:latest

COPY --from=initial /app .

CMD ["node", "./app.js"]
