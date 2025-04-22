FROM image-registry.openshift-image-registry.svc:5000/openshift/httpd:2.4-el8

COPY index.html /var/www/html/
 
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
