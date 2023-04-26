FROM tomcat:8.5.47-jdk11-openjdk
RUN chmod +x /var/lib/jenkins/workspace/java-web-app-docker/webapp/target/webapp.war
COPY /var/lib/jenkins/workspace/java-web-app-docker/webapp/target/webapp.war /usr/local/tomcat/webapps/webapp.war
