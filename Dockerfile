FROM tomcat
ADD ./target/*.war /etc/apache-tomcat-8.5.64/webapps/
EXPOSE 8080
CMD ["catalina.sh","run"]
