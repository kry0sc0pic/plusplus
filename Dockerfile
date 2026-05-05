FROM node:22-alpine

ENV TZ="Asia/Kolkata"

WORKDIR /app
COPY package.json .
RUN npm install --production
COPY index.js .

CMD ["node", "index.js"]
