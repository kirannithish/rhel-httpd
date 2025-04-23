FROM registry.ocp4.imss.co.in:8443/application/httpd:2.4

# Change Apache to listen on port 8080 instead of 80
RUN sed -i 's/^Listen 80/Listen 8080/' /usr/local/apache2/conf/httpd.conf

# Copy your index.html into the document root
COPY index.html /usr/local/apache2/htdocs/

# OpenShift prefers non-root users; 1001 is a safe UID
USER 1001

# Expose non-root port
EXPOSE 8080

# Start Apache in the foreground
CMD ["httpd-foreground"]
