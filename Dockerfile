FROM node:18

WORKDIR /app

COPY package*.json ./

RUN npm install -g yarn@3.5.1 --force

COPY . .

EXPOSE 3000

CMD npm run dev
