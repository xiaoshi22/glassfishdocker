FROM tomcat:8.5.20

# Maintainer
MAINTAINER xw2138@nyu.edu

# Copy tomcat-users.xml
ADD tomcat-users.xml /usr/local/tomcat/conf/
# Copy catalina.sh with JAVA_OPTS
ADD catalina.sh /usr/local/tomcat/bin/

# Copy JAR
ADD fortress-realm-proxy-2.0.3.jar /usr/local/tomcat/lib/

# Copy images to tomcat path
ADD fortress-rest-2.0.3.war /usr/local/tomcat/webapps/
ADD fortress-web-2.0.3.war /usr/local/tomcat/webapps/

# Copy Manager Context
ADD context.xml /usr/local/tomcat/webapps/manager/META-INF

EXPOSE 8080

# Start the Service
CMD ["chmod", "+x", "/usr/local/tomcat/bin/catalina.sh"]
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]