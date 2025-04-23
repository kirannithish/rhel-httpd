# Use the official Apache HTTP Server image
FROM registry.ocp4.imss.co.in:8443/application/httpd:2.4

# Copy custom HTML file into the Apache document root
COPY index.html /usr/local/apache2/htdocs/

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["httpd-foreground"]
