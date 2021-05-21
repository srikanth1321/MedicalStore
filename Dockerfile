FROM maven:3.6.1-jdk-11 as maven_builder

WORKDIR /app

ADD pom.xml /app

RUN ["/usr/local/bin/mvn-entrypoint.sh", "mvn", "verify", "clean", "--fail-never"]

ADD . /app

RUN ["mvn","clean","install","-T","2C","-DskipTests=true"]

FROM tomcat:8.5.65-jdk11

COPY --from=maven_builder /app/target/*.war /Users/srikanthgirimaiahgari/Desktop/Medicalstore/apache-tomcat-8.5.65/webapps/
