FROM alpine:latest

WORKDIR /app

RUN apk add --update git
RUN git clone https://github.com/hippogriff101/aic-api.git .
RUN apk add npm
RUN npm install

EXPOSE 3000

CMD ["node", "app.js"]