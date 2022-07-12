FROM node:16-alpine
WORKDIR /home/node_app/
COPY package*.json ./
RUN yarn
COPY --chown=node:node . .
EXPOSE 8080
CMD [ "yarn", "start" ]
