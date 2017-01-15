FROM nginx:1.10
MAINTAINER supermp <supermp@foxmail.com>

COPY docker-entrypoint.sh /
COPY conf.d /etc/nginx/conf.d

ENTRYPOINT ["sh", "/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
