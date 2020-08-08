FROM openjdk:8-alpine
RUN mkdir /usr/local/webservice/
COPY target/greeting-spring-boot-0.0.1-SNAPSHOT.jar /usr/local/webservice/app.jar
RUN chmod 750 /usr/local/webservice/app.jar
EXPOSE 8080
CMD java -jar /usr/local/webservice/app.jar
