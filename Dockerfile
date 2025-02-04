FROM node:current-slim

WORKDIR /app

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

COPY package*.json ./

RUN npm install --only=production

COPY . .

EXPOSE 8080

CMD ["npm", "run", "start"]
