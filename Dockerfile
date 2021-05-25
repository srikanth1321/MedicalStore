FROM maven:3.8.1-jdk-11 as maven_builder

WORKDIR /app

ADD pom.xml /app

RUN ["/usr/local/bin/mvn-entrypoint.sh", "mvn", "verify", "clean", "--fail-never"]

ADD . /app

RUN ["mvn","clean","install","-T","2C","-DskipTests=true"]

FROM tomcat:8.5.66-jdk11-openjdk-buster

COPY --from=maven_builder /app/target/*.war /usr/local/tomcat/webapps
