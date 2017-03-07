FROM node:6.10
MAINTAINER supermp <supermp@foxmail.com>

RUN npm config set registry http://registry.npm.taobao.org
RUN npm install -g cnpmjs.org cnpm sqlite3

COPY config.json /root/.cnpmjs.org/

VOLUME /root/.cnpmjs.org

EXPOSE 7001 7002
CMD ["cnpmjs.org", "start"]
