FROM justbuchanan/docker-archlinux

RUN pacman -Syu --noconfirm python

RUN mkdir /website
WORKDIR /website
COPY index.html videoplayback.mp4 Hannah.jpg ./
EXPOSE 8000
CMD python -m http.server 8000
