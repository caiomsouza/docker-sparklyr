#!/bin/bash

#OPT=$1
#INSTALL_DIR=`pwd`
#PDI_BUILD=${INSTALL_DIR}/pdi
#BISERVER_BUILD=${INSTALL_DIR}/biserver
#RUN_STACK="docker-compose up -d"

sudo apt-get -y install wget git

# Docker Installer
sudo wget https://raw.githubusercontent.com/it4biz/ubuntu-docker-installer/master/ubuntu-docker-installer.sh
sudo sh ubuntu-docker-installer.sh

#NLTK Installer
sudo sh setup/nltk-installer.sh

#NLTK ALL Data Installer
sh setup/nltk-installer-all-data.sh

#cd ${PDI_BUILD} && sh ${PDI_BUILD}/build.sh
#cd ${BISERVER_BUILD} && sh ${BISERVER_BUILD}/build.sh
#cd ${INSTALL_DIR}
