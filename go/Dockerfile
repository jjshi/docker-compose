FROM golang:latest

LABEL author="jjshi"

WORKDIR $GOPATH/src/app
ADD . $GOPATH/src/app
RUN go build .

EXPOSE 8080

ENTRYPOINT ["./app"]
