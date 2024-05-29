FROM node:20

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 4070

CMD ["node", "app.mjs"]