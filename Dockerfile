# For Java 8, try this
 FROM openjdk:8-jdk-alpine

# For Java 11, try this
#FROM adoptopenjdk/openjdk11:alpine-jre

# Refer to Maven build -> finalName
ARG JAR_FILE=target/ihr5MobileApi.jar

# cd /opt/app
WORKDIR /opt/app

# cp target/spring-boot-web.jar /opt/app/app.jar
COPY ${JAR_FILE} iHRMobileApp.jar

# java -jar /opt/app/iHRMobileApp.jar
ENTRYPOINT ["java","-jar","iHRMobileApp.jar"]


#Build reference command 
##dockerize

## create a docker image
##docker build -t ihr-mobile-app:1.0 .
##$ sudo docker build -t ihr-mobile-app:1.0 .
##run it
##$ sudo docker run -d -p 8080:8080 -t ihr-mobile-app:1.0

##access http://localhost:8080/api


## sudo docker run -p 8080:8080 -t docker-spring-boot:1.0
## sudo docker run -p 80:8080 -t docker-spring-boot:1.0
## sudo docker run -p 443:8443 -t docker-spring-boot:1.0