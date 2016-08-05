FROM centos:7
MAINTAINER Kyle Day <kday@bstonetech.com>
RUN yum update -y && yum install -y epel-release && yum install -y memcached && yum clean all
EXPOSE 11211
CMD ["/usr/bin/memcached","-p","11211","-u","memcached","-m","64"]
