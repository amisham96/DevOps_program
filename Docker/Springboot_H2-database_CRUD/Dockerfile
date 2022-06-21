FROM openjdk:11
MAINTAINER Amit Sharma<sharma.ami.07@gmail.com>
VOLUME /tmp
ARG JAR_FILE=target/Employee-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} employeeapp.jar
ENTRYPOINT ["java", "-jar", "/employeeapp.jar"]
