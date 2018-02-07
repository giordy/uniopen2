FROM node:8.9-alpine
#ENV NODE_ENV=production
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
COPY .env.production .env
EXPOSE 5000
CMD ["npm", "run", "dev"]