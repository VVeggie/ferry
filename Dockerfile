FROM golang:1.23rc1

WORKDIR /opt/ferry

COPY . .

ENV GOPROXY="https://goproxy.cn"

RUN go mod download
RUN go build -o ferry .

EXPOSE 8002