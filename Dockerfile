FROM nginx:latest
LABEL OWNER="venki"
LABEL EMAIL="venky.leader@gmail.com"
ENV REPO="https://github.com/kalwakolvenky/dockertest1.git"
RUN apt update \
    && apt install -y nginx net-tools curl unzip wget git \
    && git clone ${REPO} /tmp/website \
    && cd /tmp/website \
    && cp index.html /usr/share/nginx/html \
    && cp scorekeeper.js /usr/share/nginx/html/ \
    && cp style.css /usr/share/nginx/html/ 
CMD ["nginx", "-g" , "daemon off;"]    
