FROM eclipse-temurin:17.0.7_7-jre-jammy
EXPOSE 8080 5005
ARG BUILD_DIR=./board/build
COPY ${BUILD_DIR} /server/
RUN ls -la /server/*
ENTRYPOINT ["java","-Djava.security.egd", "-Xdebug","-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005","-jar","/server/libs/board-0.0.1-SNAPSHOT.jar"]
