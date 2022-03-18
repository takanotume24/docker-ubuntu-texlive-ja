FROM ubuntu:21.10
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /workdir
RUN apt update && \
    apt install texlive-full -y &&\
    tlmgr init-usertree 
RUN kanji-config-updmap-sys --jis2004 haranoaji
CMD ["sh"]

