FROM centos
RUN yum install httpd -y
RUN test.py
COPY index.html /var/www/html/index.html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
