FROM tomcat9
COPY target/webapp.war /usr/local/tomcat/webapps/webapp.war
