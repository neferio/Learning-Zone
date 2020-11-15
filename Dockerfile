FROM node:10-alpine
WORKDIR /src
COPY package.json .
RUN npm install
COPY app.js .
CMD ["node", "app.js"]