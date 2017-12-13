#!/bin/bash

elastic=`ps -ef | egrep -i "/home/mpweb/work/install/ELK/elastic/elasticsearch-2.4.0" | grep -v grep | awk '{print $2}' | wc -l`
if [ $elastic == 0 ]
 then
	echo "CRITICAL ! ElasticSearch is not running"
	exit 2
else
	echo "OK ! ElasticSearch is running"
	exit 0
fi
