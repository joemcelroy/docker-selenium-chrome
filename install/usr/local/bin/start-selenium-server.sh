#!/bin/bash

export DISPLAY=:99
/etc/init.d/xvfb start
echo "Starting Google Chrome ..."
google-chrome --remote-debugging-port=9222 &
java -Dwebdriver.chrome.driver=/usr/local/bin/chromedriver -jar /usr/local/bin/selenium-server-standalone-2.42.2.jar
