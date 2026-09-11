FROM node:18-alpine

WORKDIR /app

# Install dependencies first
COPY package*.json ./
RUN npm ci --omit=dev

COPY index.js ./

ENV PORT=3001
ENV AMQP_URL=amqp://rabbitmq:5672

EXPOSE 3001

USER node

CMD ["npm", "start"]
