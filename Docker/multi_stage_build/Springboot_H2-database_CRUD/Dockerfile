FROM maven AS MAVEN_BUILD
MAINTAINER Amit Sharma<sharma.ami.07@gmail.com>
# copy the source tree and pom to new container
COPY ./ ./
RUN mvn clean package

# set up the startup command to execute the jar file
# second stage of our build use openjdk
FROM openjdk:11
# copy only the artifact from the first stage and discard rest
COPY --from=MAVEN_BUILD /target/Employee-0.0.1-SNAPSHOT.jar /Employee-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/Employee-0.0.1-SNAPSHOT.jar"]
