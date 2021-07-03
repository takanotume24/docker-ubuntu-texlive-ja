FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install texlive-full -y

WORKDIR /workdir
CMD ["sh"]
