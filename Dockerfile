FROM golang:1.4.3

ADD . $GOPATH/src

RUN go get -t golang-mysql/...
RUN go install golang-mysql

ENTRYPOINT ["./bin/golang-mysql"]
