FROM golang:1.4.2
MAINTAINER Eagle Chen <chygr1234@gmail.com>

RUN apt-get update && apt-get install -y \
  mysql-client-5.5 && \
  go get github.com/tools/godep && \
  (go get github.com/siddontang/go-mysql-elasticsearch || true ) && \
  cd /go/src/github.com/siddontang/go-mysql-elasticsearch && \
  make

COPY run.sh /run_go_mysql_es
ENTRYPOINT ["/run_go_mysql_es"]
