FROM node:12-stretch
WORKDIR /app
RUN apt-get update && apt-get install -y curl
COPY package*.json ./
RUN npm install lodash@4.17.4 express@4.15.2
ENV DATABASE_PASSWORD="SuperSecretPassword123!"
ENV API_KEY="AIzaSyA123456789-VulnerableKey"
COPY . .
EXPOSE 3000
CMD ["node", "server.js"]
