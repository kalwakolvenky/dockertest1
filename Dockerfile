FROM nginx:latest
MAINTAINER venky.leader@gmail.com
RUN apt update -y
RUN apt install -y curl
COPY index.html /usr/share/nginx/html/
COPY scorekeeper.js /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
CMD ["nginx", "-g", "daemon off;"]
