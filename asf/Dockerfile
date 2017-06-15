FROM mono
MAINTAINER supermp <supermp@foxmail.com>

ENV ASF_VERSION 2.3.2.0

WORKDIR /opt/asf

RUN curl -L -O https://github.com/JustArchi/ArchiSteamFarm/releases/download/$ASF_VERSION/ASF.exe
ADD config config
ADD docker-entrypoint.sh /

ENTRYPOINT ["sh", "/docker-entrypoint.sh"]
CMD ["mono", "ASF.exe"]
