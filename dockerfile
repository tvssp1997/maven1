FROM tomcat:8.5.47-jdk11-openjdk
COPY target/webapp.war /usr/local/tomcat/webapps/webapp.war
