#FROM rhel:latest
FROM rhel8/httpd-24
#RUN yum update -y
#RUN yum install httpd -y
COPY index.html /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
