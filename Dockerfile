FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install curl -y &&\\
    mkdir /tmp/install-tl-unx && \
    curl -L ftp://tug.org/historic/systems/texlive/2021/install-tl-unx.tar.gz | \
    tar -xz -C /tmp/install-tl-unx --strip-components=1 && \
    printf "%s\n" \
    "selected_scheme scheme-full" \
    "tlpdbopt_install_docfiles 0" \
    "tlpdbopt_install_srcfiles 0" \
    > /tmp/install-tl-unx/texlive.profile && \
    /tmp/install-tl-unx/install-tl \
    --profile=/tmp/install-tl-unx/texlive.profile && \
    rm -fr /tmp/install-tl-unx 

RUN /usr/local/texlive/2021/bin/x86_64-linux/tlmgr path add
RUN tlmgr update --self --all

WORKDIR /workdir
CMD ["sh"]
