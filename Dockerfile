FROM tomcat:8
LABEL maintainer="Indu Anoop"
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
WORKDIR /usr/local/tomcat/
COPY webapps.dist/ ./webapps/
EXPOSE 8080
CMD ["catalina.sh","run"]
