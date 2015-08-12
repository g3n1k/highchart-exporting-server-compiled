#!/bin/bash

# install tomcat7
#sudo apt-get install tomcat7

# tambah value cataline_home ke file .bashrc
echo "export CATALINA_HOME=/usr/share/tomcat7" >> ~/.bashrc

#copy phantomjs
sudo cp -r phantomjs-1.9.0-linux-x86_64 /usr/local/share
sudo ln -s /usr/local/share/phantomjs-1.9.0-linux-x86_64/bin/phantomjs /usr/local/share/phantomjs 
sudo ln -s /usr/local/share/phantomjs-1.9.0-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs
sudo ln -s /usr/local/share/phantomjs-1.9.0-linux-x86_64/bin/phantomjs /usr/bin/phantomjs

#mencopy folder "highcharts-export-web" dan file "highcharts-export-web.war" ke folder "/var/lib/tomcat7/webapps"
sudo cp -r highcharts-export-web /var/lib/tomcat7/webapps/
sudo cp -r highcharts-export-web.war /var/lib/tomcat7/webapps/

exit 0
