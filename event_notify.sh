#!/bin/bash

#echo "hello" >> /tmp/event.txt
#echo `date` >> /tmp/event.txt
#echo $* >> /tmp/event.txt



HOSTADDRESS=$1
SERVICEDESC=$2
SERVICESTATE=$3
SERVICESTATETYPE=$4
SERVICEATTEMPT=$5
SERVICEOUTPUT=$6
MYSQL_USERNAME="mroot"
MYSQL_PASSWORD="mpro0t"
TIME3=`date`
TIME4=`date +%H:%M`


#echo $* >> /tmp/event.txt

echo "$1" >> /tmp/event.txt
echo "$2" >> /tmp/event.txt
echo "$3" >> /tmp/event.txt
echo "$4" >> /tmp/event.txt
echo "$5" >> /tmp/event.txt
echo $TIME3 >> /tmp/event.txt

if [ "$SERVICESTATETYPE" == "HARD" ] && [ "$SERVICESTATE" != "OK" ]
then
	echo "hello" >> /tmp/event.txt
        mysql -u$MYSQL_USERNAME -p$MYSQL_PASSWORD -h 127.0.0.1 -D nagios -e "INSERT INTO event_notify1 (host_addr,service_desc,service_state,service_state_type,date,alert_time,service_output,flag_time,handled_by,status_flag) VALUES ('$HOSTADDRESS', '$SERVICEDESC', '$SERVICESTATE', '$SERVICESTATETYPE', '$TIME3', '$TIME4', '$SERVICEOUTPUT','0','NULL','0')";


	echo "world" >> /tmp/event.txt

fi


if [ "$SERVICESTATE" == "OK" ]
then
       echo "we are going to delete previous critical log"
	mysql -u$MYSQL_USERNAME -p$MYSQL_PASSWORD -h 127.0.0.1 -D nagios -e "INSERT INTO event_notify select host_addr,service_desc,service_state,service_state_type,date,alert_time,service_output,NOW(),'$SERVICEOUTPUT' FROM event_notify1 where host_addr='$HOSTADDRESS' AND  service_desc='$SERVICEDESC'"

        mysql -u$MYSQL_USERNAME -p$MYSQL_PASSWORD -h 127.0.0.1 -D nagios -e "delete from event_notify1 where host_addr='$HOSTADDRESS' AND  service_desc='$SERVICEDESC'"

fi





