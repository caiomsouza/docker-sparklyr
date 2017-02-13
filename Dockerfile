FROM ubuntu:16.04
FROM java:8
FROM r-base:3.3.2
FROM python:2.7.8
FROM sequenceiq/spark:1.6.0

MAINTAINER Caio Moreno de Souza "caiomsouza@gmail.com"

ENV NPL_HOME /opt/npl_home

USER root

# Timezones: https://www.vmware.com/support/developer/vc-sdk/visdk400pubs/ReferenceGuide/timezone.html
# Set the timezone.
#ENV TZ "Europe/Madrid"
#RUN echo $TZ | tee /etc/timezone
#RUN dpkg-reconfigure --frontend noninteractive tzdata



# Install maven
#RUN apt-get update
#RUN apt-get install -y maven

# Install wget
RUN apt-get -y install wget git


# Install NLTK
RUN git clone https://github.com/caiomsouza/docker-sparklyr.git
CMD ["sh", "docker-sparklyr/easy_install.sh"]
