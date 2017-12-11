#!/bin/bash
########THIS SCRIPT IS TO GENERATE ALERTS WHICH ARE CRITICAL OR######## 
########WARNING FROM PAST 30MIN AND NOT BEING HANDLED BY ANY ONE#######
MYSQL_USER="mroot"
MYSQL_PASSWORD="mpro0t"

TEST=$(mysql -umroot -pmpro0t -D nagios -Bse "select date_format(alert_time, '%H:%i') from event_notify1;")

for var in $TEST
  do
   TIME4=`date +%H:%M`
   echo "$TIME4"


   echo "$var"
   TIME5=$var
   SEC3=`date +%s -d ${TIME4}`
   SEC4=`date +%s -d ${TIME5}`
   DIFFSEC=`expr ${SEC3} - ${SEC4}`
   DIFFMIN=$(($DIFFSEC / 60))

   echo "$DIFFMIN minutes"
   FLAG=$(mysql -umroot -pmpro0t -D nagios -Bse "select status_flag from event_notify1 where alert_time='$TIME5';")
   echo "$FLAG"

   if [ $DIFFMIN -ge 30 -a $DIFFMIN -le 60 -a $FLAG -eq 0 ]
    then
     echo "the time is greater hence the csv file will be created"
     mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -D nagios -Bse "SELECT * FROM event_notify1 where alert_time='$TIME5';" >> /etc/nagios/nagios-critical.csv
     ADI=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -D nagios -Bse "SELECT host_addr, service_desc, service_state, service_output, date FROM event_notify1 where alert_time='$TIME5';"`
      echo $ADI
     /bin/bash /scripts/standard_sms_sending_script.sh -n 8108670714 -m "CRON: PROBLEM: $ADI"
     /bin/bash /scripts/standard_sms_sending_script.sh -n 8882428899 -m "CRON: PROBLEM: $ADI"
     /bin/bash /scripts/standard_sms_sending_script.sh -n 9373438677 -m "CRON: PROBLEM: $ADI"
     /bin/bash /scripts/standard_sms_sending_script.sh -n 8400424600 -m "CRON: PROBLEM: $ADI"
#EOF
   else
    echo "THE time is lesser file not created"
   fi
  done


sh /etc/nagios/eventhandlers/flag_alerts.sh
