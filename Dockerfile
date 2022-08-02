FROM openjdk:11-slim
EXPOSE 8080

ENTRYPOINT ["./entrypoint.sh"]

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

ARG APP_NAME=facade-service

ENV MY_HOME /opt/shoubhik
ENV APP_HOME $MY_HOME/$APP_NAME

ENV USERNAME test
ENV GROUPNAME test

WORKDIR $APP_HOME

COPY entrypoint.sh .
COPY target/*-0.0.1-SNAPSHOT.jar lib/app.jar

RUN groupadd -r $GROUPNAME && useradd --no-log-init -r -g $GROUPNAME $USERNAME \
    && chown -R $USERNAME:$GROUPNAME $APP_HOME \
    && chmod 755 *.sh

USER $USERNAME
