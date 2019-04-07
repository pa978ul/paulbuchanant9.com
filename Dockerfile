RUN mkdir /website
WORKDIR /website
COPY *./
COPY *./
EXPOSE 8000
CMD python -m http.server 8000
