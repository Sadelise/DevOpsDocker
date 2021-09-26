#
# Build:
# docker build . -t button 
#
# Run: 
# docker run -it -p 8080:8080 button
#

FROM openjdk:8

WORKDIR /usr/src/app

COPY ./spring-example-project/ .

RUN ./mvnw package 

CMD java -jar ./target/docker-example-1.1.3.jar
