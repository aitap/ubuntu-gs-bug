FROM ubuntu:latest

RUN apt-get update -y && apt-get install -y strace r-base ghostscript --no-install-recommends

RUN gs --version #10.02.1

RUN strace -f -o foo R -e "bitmap('test.bmp')" || true
