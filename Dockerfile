FROM centos
MAINTAINER andres
RUN yum -y update
RUN yum -y install httpd
RUN systemctl enable httpd
EXPOSE 79
ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh
RUN yum clean all && rm -rf /tmp/yum*

ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh
CMD ["/run-httpd.sh"]
