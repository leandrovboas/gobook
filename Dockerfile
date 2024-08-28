FROM golang:latest as builder
WORKDIR /app
COPY . .
RUN GOOS=windows CGO_ENABLED=0 go build -ldflags="-w -s" -o server cmd/gobook/main.go

FROM golang:alpine
COPY --from=builder /app/server .
CMD ["./server"]