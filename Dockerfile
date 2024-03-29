FROM node:16.17.0-alpine

# hadolint ignore=DL3018
RUN apk --no-cache add --update python3 make g++\
   && rm -rf /var/cache/apk/*

WORKDIR /app

COPY ./package.json ./
RUN npm i

COPY . .

EXPOSE 4000
CMD ["npm", "start"]