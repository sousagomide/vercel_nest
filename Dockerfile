# ARG IMAGE=node:20
# FROM $IMAGE as builder
# WORKDIR /app
# COPY . .
# RUN npm i
# #DEVELOPMENT
# FROM builder as dev
# CMD [""]

FROM node:20
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
CMD [ "node", "dist/main.js" ]