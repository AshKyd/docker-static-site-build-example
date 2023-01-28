FROM node:alpine
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN npm install && npm run build

FROM flashspys/nginx-static
RUN rm -rf /etc/nginx/conf.d/default.conf
COPY docker/default.conf /etc/nginx/conf.d/default.conf
COPY docker/nginx.conf /etc/nginx/nginx.conf
RUN apk update && apk upgrade
COPY --from=0 /usr/src/app/dist /static