FROM node:12

WORKDIR /usr/src/app

COPY package*.json ./
RUN ["npm", "install"]

COPY . .
RUN ["npm", "run", "build"]

ENV PORT 80
EXPOSE ${PORT}

CMD ["npm", "start"]
