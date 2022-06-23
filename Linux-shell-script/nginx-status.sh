#!/bin/bash
if curl -s --head http://localhost:80 | grep "200"
  then
    echo "The nginx server is running" 
  else
    echo "The nginx server is not running" 
fi
