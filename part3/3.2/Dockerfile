#
# Build:
# docker build -t automatic-builder -f Dockerfile . 
#
# Run:
# docker run -v /var/run/docker.sock:/var/run/docker.sock:ro -v /usr/bin/docker:/usr/bin/docker:ro -v /home/$USER/.docker/config.json:/root/.docker/config.json:ro -it automatic-builder:latest
#

FROM ubuntu:18.04

RUN apt-get update -y \ 
    && apt-get install git -y

COPY builder.sh .

CMD ./builder.sh

