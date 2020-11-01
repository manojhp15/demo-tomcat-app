FROM tomcat:8

ENV BUILD_TOOL "JENKINS"

ADD target/*.war /usr/local/tomcat/webapps/myweb.war
