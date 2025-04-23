FROM registry.ocp4.imss.co.in:8443/application/httpd:2.4

# Switch Apache to use port 8080 (non-root)
RUN sed -i 's/^Listen 80/Listen 8080/' /usr/local/apache2/conf/httpd.conf

# Set ServerName to avoid the startup warning
RUN echo "ServerName localhost" >> /usr/local/apache2/conf/httpd.conf

# Make the logs directory writable for non-root user
RUN chown -R 1001:0 /usr/local/apache2/logs && \
    chmod -R g+w /usr/local/apache2/logs

# Copy website files
COPY index.html /usr/local/apache2/htdocs/

# Run as UID 1001 (safe default for OpenShift)
USER 1001

# Expose the new Apache port
EXPOSE 8080

# Start Apache
CMD ["httpd-foreground"]
