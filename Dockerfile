##INSTALLING TOMCAT ON UBUNTU AND HOST AN HTML FILE

FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
    openjdk-8-jdk \
    wget \
    && rm -rf /var/lib/apt/lists/*
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-11/v11.0.0-M11/bin/apache-tomcat-11.0.0-M11.tar.gz .
RUN tar -xvzf apache-tomcat-11.0.0-M11.tar.gz
RUN mv apache-tomcat-11.0.0-M11/* /opt/tomcat 
RUN apt-get install -y git && 
RUN git clone https://github.com/ARREYETTA14/Test_Restaurant_website.git /opt/tomcat/webapps/ROOT/index.html
EXPOSE 8080
##COPY ./index.html /opt/tomcat/webapps/ROOT/index.html
CMD ["/opt/tomcat/bin/catalina.sh", "run"]




