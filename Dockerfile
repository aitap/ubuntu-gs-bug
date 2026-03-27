FROM ubuntu:latest

RUN apt-get update -y && apt-get install -y patch ghostscript --no-install-recommends && apt build-dep r-base
COPY foo.patch /
RUN apt source r-base && cd r-base-* && patch -p0 </foo.patch && ./configure && make && make install
RUN gs --version #10.02.1
RUN R -e "bitmap('test.bmp')"
