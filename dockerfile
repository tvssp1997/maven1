FROM tomcat:8.5.47-jdk8-openjdk
COPY /var/lib/jenkins/workspace/development/webapp/target/webapp.war /usr/local/tomcat/webapps/webapp.war
