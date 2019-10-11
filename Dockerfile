FROM mhart/alpine-node:8

ENV NODE_VERSION 8.9.4

RUN apk add --no-cache make gcc g++ python bash

WORKDIR /var/express-commerce

COPY lib/ /var/express-commerce/lib/
COPY bin/ /var/express-commerce/bin/
COPY config/ /var/express-commerce/config/
COPY public/ /var/express-commerce/public/
COPY routes/ /var/express-commerce/routes/
COPY views/ /var/express-commerce/views/

COPY app.js /var/express-commerce/
COPY package.json /var/express-commerce/
COPY gulpfile.js /var/express-commerce/

RUN npm install

VOLUME /var/express-commerce/data

EXPOSE 1111
ENTRYPOINT ["npm", "start"]
