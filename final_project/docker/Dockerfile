FROM openjdk:8-jre-alpine
RUN mkdir /app && addgroup -S vyurchenko && adduser -S -s /bin/false -G vyurchenko vyurchenko
WORKDIR /usr/src/app
COPY ./docker/output /usr/src/app
RUN chown -R vyurchenko:vyurchenko /usr/src/app
USER vyurchenko
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]