FROM openjdk:17
ENV APP_FILE cloud-config-service-1.0.1.jar
ENV APP_HOME /opt/cloud-config-service/libs
COPY build/libs/$APP_FILE $APP_HOME/$APP_FILE
WORKDIR $APP_HOME
ENTRYPOINT ["sh", "-c", "java ${JAVA_OPTS} -jar $APP_FILE ${0} ${@}"]