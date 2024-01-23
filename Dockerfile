FROM nginx

WORKDIR /usr/share/nginx/html

COPY package.json .

RUN npm install

RUN apt-get update -y

COPY . .

EXPOSE 80

CMD [ "node", "gulpfile.js"]

