FROM justbuchanan/docker-archlinux

RUN pacman -Syu --noconfirm python

RUN mkdir /website
WORKDIR /website

COPY index.html ./

EXPOSE 8000
CMD python -m http.server 8000
