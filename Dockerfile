FROM golang:1.22

WORKDIR /app

RUN go mod init github.com/ag89201/42-docker-final

COPY *.go *.db ./

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /42-docker-final

CMD ["/42-docker-final"]