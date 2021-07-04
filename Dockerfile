FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install texlive-full -y &&\
    tlmgr init-usertree &&\
    tlmgr update --self --all

WORKDIR /workdir
CMD ["sh"]
