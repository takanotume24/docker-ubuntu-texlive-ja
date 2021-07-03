FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive

RUN  sed -i.bak -e 's%http://[^ ]\+%http://ftp.nara.wide.ad.jp/pub/Linux/ubuntu/%g' /etc/apt/sources.list
RUN apt update && \
    apt install texlive-full -y

WORKDIR /workdir
CMD ["sh"]
