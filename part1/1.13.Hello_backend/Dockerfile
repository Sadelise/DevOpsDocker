#
# Build:
# docker build . -t backend
#
# Run:
# docker run -p 8080:8080 backend
#

FROM golang:1.16

WORKDIR /usr/src/app

COPY ./example-backend/ .

RUN go build 

EXPOSE 8080

CMD ./server

