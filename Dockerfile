FROM golang:1.16.13

WORKDIR /app

ENV GO111MODULE=on GOSUMDB=off

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build -o main .

EXPOSE 3000

CMD ["/app/main"]