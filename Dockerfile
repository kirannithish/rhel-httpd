FROM registry.ocp4.imss.co.in:8443/application/rhel9/httpd-24

COPY index.html /var/www/html/

# Expose port 8080
EXPOSE 8080

CMD ["/usr/bin/run-httpd"]
