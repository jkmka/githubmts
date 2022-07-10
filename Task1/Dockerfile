# syntax=docker/dockerfile:1
# Dockerfile centos with HAProxy and Nginx
FROM centos:7
RUN yum -y update; yum -y upgrade; yum -y install epel-release; yum -y install nginx haproxy
COPY haproxy.cfg /etc/haproxy/haproxy.cfg
COPY simple.html /usr/share/doc/HTML/index.html
CMD nginx; haproxy; haproxy -f /etc/haproxy/haproxy.cfg; tail -f /dev/null
EXPOSE 8080