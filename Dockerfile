FROM golang

ADD . /go/src/github.com/bassaer/go-docker
WORKDIR /go/src/gihub.com/bassaer/go-docker

RUN go install /go/src/github.com/bassaer/go-docker

ENTRYPOINT /go/bin/go-docker

EXPOSE 8080
