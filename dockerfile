FROM tomcat:8.5.47-jdk8-openjdk
ADD ./sample/target/webapp.war /usr/local/tomcat/webapps/webapp.war
