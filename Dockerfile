FROM openjdk:8-jdk-alpine

MAINTAINER Marsh Dsilva , dsilvamarsh@gmail.com

RUN addgroup -S dev && adduser -S dev -G dev

USER dev:dev

VOLUME /tmp

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} com-bank-core-service-CustomerCreditTransferInitiation.jar

ENTRYPOINT ["sh", "-c", "java ${JAVA_OPTS} -jar /com-bank-core-service-CustomerCreditTransferInitiation.jar"]