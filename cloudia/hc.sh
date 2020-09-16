#!/usr/bin/env bash
URL=$1
PORT=9000 #Configured in logstash config

curl -v --fail --silent --output /dev/null http://$URL:$PORT

if [ $? -eq 0 ]
then
 echo -n 1 > last-hc-result.tmp
 echo -n 1 #success
else
 echo -n 0 > last-hc-result.tmp
 echo -n 0 #failure
fi

