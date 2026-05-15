FROM tomcat:10.1-jdk21

# Remove default tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file into tomcat
COPY target/works-with-heroku-1.0.0.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8085

CMD ["catalina.sh", "run"]
