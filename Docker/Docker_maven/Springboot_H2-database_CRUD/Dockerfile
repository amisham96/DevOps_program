FROM maven
MAINTAINER Amit Sharma<sharma.ami.07@gmail.com>
COPY ./ ./
RUN mvn clean package
ENTRYPOINT ["java", "-jar", "target/Employee-0.0.1-SNAPSHOT.jar"]
