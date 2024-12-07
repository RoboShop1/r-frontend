FROM docker.io/nginx:1.24
RUN rm -rf /usr/share/nginx/html/*  && \
    rm -rf /etc/nginx/nginx.conf && \
    rm -rf /etc/nginx/conf.d/*

COPY . /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf