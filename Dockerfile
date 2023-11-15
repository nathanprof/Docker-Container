FROM ubuntu:latest

MAINTAINER nathanrprof42@gmail.com

RUN apt-get update && apt-get install -y nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

