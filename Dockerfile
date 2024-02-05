FROM nginx:alpine as builder
WORKDIR /app
COPY . /usr/share/nginx/html
EXPOSE 90
