#!/bin/bash

#Download java version 8

cd /tmp

sudo yum install wget unzip -y

wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm

#Install java

sudo rpm -ivh jdk-8u131-linux-x64.rpm

#Download tomcat 8

wget http://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32-windows-x64.zip

unzip apache-tomcat-8.5.32-windows-x64.zip

sudo mv apache-tomcat-8.5.32 /opt/tomcat

#Download jenkins war file

wget https://updates.jenkins-ci.org/download/war/2.143/jenkins.war

sudo mv jenkins.war /opt/tomcat/webapps

#update Permissions

cd /opt/tomcat

sudo chgrp -R tomcat bin

sudo chmod  g+rwx bin

sudo g+r bin/*

#start tomcat

cd /opt/tomcat/bin

./startup.sh

