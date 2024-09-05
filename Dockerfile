FROM golang:1.22.6

WORKDIR /opt/ferry

COPY . .

ENV GOPROXY="https://goproxy.cn"

RUN go mod download
RUN go build -o ferry .

EXPOSE 8002