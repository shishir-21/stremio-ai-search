FROM node:20-alpine

WORKDIR /usr/src/app

ENV NODE_ENV=production
ENV ENABLE_LOGGING=false

COPY package*.json ./
RUN npm install --production

COPY . .

EXPOSE 7000

RUN mkdir -p logs

CMD ["node", "server.js"]
