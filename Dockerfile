FROM quay.io/projectquay/golang:1.20

WORKDIR /app

COPY . .

RUN go build -o app

CMD ["./app"]
