# Use the official Apache HTTP Server image
FROM httpd:2.4

# Copy custom HTML file into the Apache document root
COPY index.html /usr/local/apache2/htdocs/

# Expose port 80
EXPOSE 8080

# Start Apache in the foreground
CMD ["httpd-foreground"]
