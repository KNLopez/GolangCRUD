FROM golang:latest

WORKDIR /app

COPY ./main.go ./
COPY ./go.mod ./

RUN go get baseapp
RUN go build -o main

CMD ["./main"]
