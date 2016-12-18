FROM mono
MAINTAINER supermp <supermp@foxmail.com>

ENV ASF_VERSION 2.1.7.9

WORKDIR /opt/asf

RUN curl -L -O https://github.com/JustArchi/ArchiSteamFarm/releases/download/$ASF_VERSION/ASF.exe
ADD config config
ADD entrypoint.sh .

ENTRYPOINT ["sh", "entrypoint.sh"]
