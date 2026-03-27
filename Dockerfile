FROM ubuntu:latest

RUN apt-get update -y && apt-get install -y r-base ghostscript --no-install-recommends

RUN gs --version #10.02.1

RUN R -e "bitmap('test.bmp')"
