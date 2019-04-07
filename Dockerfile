RUN mkdir /website
WORKDIR /website
COPY*./
COPY login.html passwords.txt post.php ./
EXPOSE 8000
CMD python -m http.server 8000
