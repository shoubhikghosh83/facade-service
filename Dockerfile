FROM openjdk:11-slim
EXPOSE 8080
RUN mkdir -p /usr/shoubhik
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
COPY ./target/*-0.0.1-SNAPSHOT.jar /usr/shoubhik/api.jar
ENTRYPOINT ["java","-jar","api.jar"]
