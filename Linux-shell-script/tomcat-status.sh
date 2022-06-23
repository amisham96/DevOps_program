#!/bin/bash
if curl -s --head http://localhost:8080 | grep "200"
  then
    echo "The tomcat server is running" 
  else
    echo "The tomcat server is not running" 
    systemctl start tomcat.service
fi
