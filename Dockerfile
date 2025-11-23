# 使用 Temurin Java 17
FROM eclipse-temurin:17-jdk

WORKDIR /app

# 自動下載 Lavalink v3 jar（官方 GitHub Release）
RUN apt-get update && apt-get install -y wget \
    && wget -O Lavalink.jar https://github.com/lavalink-devs/Lavalink/releases/download/3.7.10/Lavalink.jar

# 複製設定檔
COPY application.yml .

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
