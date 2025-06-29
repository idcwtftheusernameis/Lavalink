FROM openjdk:17-jdk-slim

RUN apt update && apt install -y git curl

WORKDIR /app
RUN git clone https://github.com/freyacodes/Lavalink.git .
RUN ./gradlew build

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
