FROM node:16-slim

WORKDIR /usr/local/src

COPY ./BUILD .

RUN npm install -g http-server
EXPOSE 80

CMD ["http-server", "-p", "80", "./"]
