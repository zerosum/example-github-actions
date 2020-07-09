FROM golang:1.14.4
VOLUME /go/bin
ENV GOOS=linux
ENV GOARCH=amd64
ENV CGO_ENABLED=1
WORKDIR /go/src
COPY . .
ENTRYPOINT ["go", "build", "-o", "../bin/greeting", "main.go"]
