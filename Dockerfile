FROM debian:bullseye-slim
RUN apt-get update && \
    apt-get install -y git build-essential libcurl4-gnutls-dev -qq
RUN git clone https://github.com/clibs/clib.git /tmp/clib && \
    cd /tmp/clib && \
    make && \
    make install
RUN clib install visionmedia/histo
CMD histo
