##INSTALLING TOMCAT ON UBUNTU AND HOST AN HTML FILE

FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
    openjdk-8-jdk \
    wget \
    && rm -rf /var/lib/apt/lists/*
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.76/bin/apache-tomcat-9.0.76.tar.gz .
RUN tar -xvzf apache-tomcat-9.0.76.tar.gz
RUN mv apache-tomcat-9.0.76/* /opt/tomcat \
    apt-get install -y git && \
    git clone https://github.com/ARREYETTA14/Test_Restaurant_website.git /opt/tomcat/webapps/ROOT/index.html
EXPOSE 8080
##COPY ./index.html /opt/tomcat/webapps/ROOT/index.html
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
