FROM nginx:alpine

LABEL maintainer="Hiqode DevOps Team"
LABEL project="Hiqode DevOps Platform"
LABEL version="1.0"

RUN rm -rf /usr/share/nginx/html/*

COPY . /usr/share/nginx/html

RUN chmod -R 755 /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
