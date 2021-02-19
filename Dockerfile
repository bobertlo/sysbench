FROM alpine:3.13
MAINTAINER Tobias Jakobsson <jakobsson.tobias@gmail.com>

RUN apk add --virtual .build-deps git build-base automake autoconf libtool mariadb-dev --update \
  && git clone https://github.com/akopytov/sysbench.git \
  && cd sysbench \
  && ./autogen.sh \
  && ./configure --disable-shared \
  && make \
  && make install \
  && apk del .build-deps \
  && apk add bash libgcc mariadb-connector-c

CMD ["sysbench"]
