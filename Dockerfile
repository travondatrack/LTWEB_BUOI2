# Dùng Tomcat chính thức
FROM tomcat:10.1-jdk21

# Xóa app mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy war đã build vào Tomcat
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose cổng
EXPOSE 8080

# Run Tomcat
CMD ["catalina.sh", "run"]
