FROM tomcat
COPY /var/lib/jenkins/workspace/java-web-app-docker/webapp/target/webapp*.war /usr/local/tomcat/webapps/webapp.war
