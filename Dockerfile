FROM golang:1.17beta1

WORKDIR /opt/ferry

COPY . .

ENV GOPROXY="https://goproxy.cn"

RUN go mod download
RUN go build -o ferry .

EXPOSE 8002