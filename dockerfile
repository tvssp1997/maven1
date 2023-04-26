FROM tomcat:8.5.47-jdk11-openjdk
COPY /var/lib/jenkins/workspace/java-web-app-docker/server/target/server.war /usr/local/tomcat/webapps/webapp.war
