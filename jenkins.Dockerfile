FROM jenkins/jenkins:alpine
LABEL MAINTAINER Jamil Ahmed <me@jamilahmed.net>

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt
EXPOSE 8080
