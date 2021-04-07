FROM node:14.16.0-alpine3.10
WORKDIR /app
COPY . .
RUN npm install pm2 -g
RUN npm install
EXPOSE 3000
CMD ["pm2-runtime", "app.js"]