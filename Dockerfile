FROM registry.ocp4.imss.co.in:8443/application/apache2

#RUN apt-get update
#RUN apt-get install -y apache2

#ENV APACHE_RUN_USER www-data
#ENV APACHE_RUN_GROUP www-data
#ENV APACHE_LOG_DIR /var/log/apache2

COPY index.html /var/www/html/

# Expose port 80
EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["-D", "FOREGROUND"]
