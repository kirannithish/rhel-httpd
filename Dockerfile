# Start with Red Hat UBI minimal
FROM registry.access.redhat.com/ubi9/ubi-minimal

# Install httpd
RUN microdnf install -y httpd && microdnf clean all

# Add custom index.html to web root
COPY index.html /var/www/html/index.html

# Set the working user to non-root (OpenShift will override this anyway)
USER 1001

# Expose port 8080 (default for OpenShift)
EXPOSE 8080

# Run Apache in foreground with the correct config
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
