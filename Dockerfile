FROM ubuntu:latest

MAINTAINER John Doe <johndoe@example.com>

RUN apt-get update && apt-get install -y nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

