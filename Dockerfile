FROM tomcat:7-jdk8-corretto
COPY target/maven-web-app*.war /usr/local/tomcat/webapps/maven-web-application.war
