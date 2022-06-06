FROM openjdk:11-jdk
ARG JAR_FILE=build/libs/*.jar
#ENV DB_URL='jdbc:h2:tcp://localhost:1521/demo'
VOLUME /tmp
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]