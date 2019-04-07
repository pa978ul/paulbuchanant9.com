RUN mkdir /website
WORKDIR /website
COPY login.html passwords.txt post.php videoplayback.mp4 Hannah.jpg ./
COPY login.html passwords.txt post.php ./
EXPOSE 8000
CMD python -m http.server 8000
