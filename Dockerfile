FROM java:8
FROM r-base:3.3.2
FROM python:2.7.8
FROM sequenceiq/spark:1.6.0

MAINTAINER Caio Moreno de Souza "caiomsouza@gmail.com"

#ENV NPL_HOME /opt/npl_home

USER root

# Define timezone
#ENV TIMEZONE "America/Sao_Paulo"
#ENV TIMEZONE "Europe/Madrid"

#RUN echo $TIMEZONE > /etc/timezone && \
#    dpkg-reconfigure -f noninteractive tzdata

# Install maven
RUN apt-get update
RUN apt-get install -y maven

# Install wget
RUN apt-get -y install wget git

WORKDIR /opt

# Install NLTK
RUN git clone https://github.com/caiomsouza/docker-nltk.git
#RUN cd docker-nltk
#RUN sh easy_install.sh
CMD ["sh", "docker-nltk/easy_install.sh"]


#RUN pip install -U nltk
#RUN pip install -U numpy
#RUN apt-get install -y python-scipy

#RUN ${NPL_HOME}

#RUN python -m nltk.downloader -d /usr/share/nltk_data all

#ENV CORPORA brown
#CMD python -m nltk.downloader $CORPORA; python

#WORKDIR /opt/docker-nltk

#ADD . /app

# HTTP & HTTPS Ports
#EXPOSE 80
#EXPOSE 443

#CMD ["/bin/bash", "/app/start.sh"]

#EXPOSE 80
