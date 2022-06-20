FROM alpine:latest

RUN apk add nss-tools curl

RUN curl -JLO "https://dl.filippo.io/mkcert/latest?for=linux/amd64" &&\
    chmod +x mkcert-v*-linux-amd64 &&\
    cp mkcert-v*-linux-amd64 /usr/local/bin/mkcert

CMD ["mkcert"]