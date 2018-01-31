FROM tomcat:8.0.38

ADD /target/ROOT.war /usr/local/tomcat/webapps
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["catalina.sh", "run"]
