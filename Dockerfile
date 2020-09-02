FROM tomcat:8.5.56

ENV CATALINA_HOME=/usr/local/tomcat

ENV PATH=$CATALINA_HOME/bin:$PATH

COPY target/Application.war /usr/local/tomcat/webapps/

EXPOSE 8080
