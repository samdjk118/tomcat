FROM java
MAINTAINER docker cjs<C107118203@nkust.edu.tw>
RUN apt-get update
RUN apt-get install -y wget
RUN cd /
RUN wget http://apache.stu.edu.tw/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz
RUN tar zxvf apache-tomcat-7.0.90.tar.gz

CMD ["/apache-tomcat-7.0.90/bin/catalina.sh","run"]

EXPOSE 8080
