FROM golang:alpine

ADD . /go/src/hell-world

RUN mkdir -p /go/src/hell-world
WORKDIR /go/src/hell-world

ENV GO111MODULE=on

RUN go build
ENTRYPOINT ./hell-world

# RUN go install
# ENTRYPOINT /go/bin/hell-world

EXPOSE 4000