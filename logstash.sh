#!/bin/bash
logstash=`ps -ef | egrep -i "/home/mpweb/work/install/ELK/logstash/logstash-2.4.0_50(.)5/vendor/jruby/lib/jni" | grep -v grep | awk '{print $2}' | wc -l`
if [ $logstash == 0 ]
then
		echo "CRITICAL ! Logstash is not running"
		exit 2	
else
		echo "OK ! Logstash is running"
		exit 0
fi
