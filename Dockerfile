FROM tomcat:latest

ADD ./target/Hello_world-0.0.1-SNAPSHOT.jar /usr/local/tomcat/Helloworld/

EXPOSE 8000

CMD ["catalina.sh", "run"]
