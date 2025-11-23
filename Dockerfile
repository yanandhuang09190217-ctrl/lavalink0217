# 使用 Temurin JDK 17
FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY Lavalink.jar .
COPY application.yml .

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
