FROM tomcat:9
WORKDIR /user/local/tomcat
RUN mv webapps.dist/* webapps
COPY target/welcomeapp.war webapps
EXPOSE 8080

CMD ["/user/local/tomcat/bin/catalina.sh","run"]

