FROM node:lts
WORKDIR /usr/src/app
RUN apt-get update && apt-get install ffmpeg -y
COPY package*.json ./
RUN npm i --legacy-deps
COPY . .
CMD [ "npm", "run", "start:prod" ]