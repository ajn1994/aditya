#!/bin/bash
kibana=`ps -ef | egrep -i "bin/kibana" | grep -v grep | awk '{print $2}' | wc -l`
if [ $kibana == 0 ]
then
	echo "CRITICAL ! Kibana is not running"
	exit 2
else
	echo "OK ! Kibana is running"
	exit 0
fi
