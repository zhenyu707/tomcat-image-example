FROM centos:7
MAINTAINER jack

RUN yum install -y wget

RUN cd /

RUN wget http://apache.stu.edu.tw/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz
RUN tar zxvf apache-tomcat-7.0.90.tar.gz

ENV JAVA_HOME=/jdk1.8.0_172
ENV PATH=$PATH:/jdk1.8.0_172/bin
CMD ["/apache-tomcat-7.0.90/bin/catalina.sh", "run"]

EXPOSE 8080
