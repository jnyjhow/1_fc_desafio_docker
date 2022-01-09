FROM node:14-alpine3.13

WORKDIR /home/node/app

COPY . .

RUN npm install
#RUN npm install -g nodemon

ENTRYPOINT [ "node", "index.js" ]

EXPOSE 3000