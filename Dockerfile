FROM alpine:edge

RUN apk add --no-cache ca-certificates tar nginx \
    && mkdir -p /usr/share/nginx/html

COPY nginx.conf /etc/nginx/nginx.conf
COPY nginx.vh.default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
