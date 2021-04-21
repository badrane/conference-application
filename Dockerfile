FROM java:8
VOLUME /tmp
ADD conference-app.war app.war
RUN touch /app.war
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.war"]
