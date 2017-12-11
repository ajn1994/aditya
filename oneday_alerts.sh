#/bin/bash
# this file is to create one day alerts file 
# and mail it to repective person 

MYSQL_USER="mroot"
MYSQL_PASSWORD="mpro0t"
DATE=`date +%y-%m-%d-%H:%M:%S`


mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h 127.0.0.1 -D nagios << EOF
(SELECT 'host_addr','service_desc','service_state','service_state_type','date','alert_time','service_output','ok_time','ok_service_output') UNION (SELECT * FROM event_notify WHERE ok_time >= NOW() - INTERVAL 1 DAY INTO OUTFILE '/var/lib/mysql-files/nagiosalerts/nagiosalerts.csv' FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n');
(SELECT 'host_addr','service_desc','service_state','service_state_type','date','alert_time','service_output') UNION (SELECT host_addr,service_desc,service_state,service_state_type,date,alert_time,service_output FROM event_notify1 WHERE alert_time >= NOW() - INTERVAL 1 DAY INTO OUTFILE '/var/lib/mysql-files/nagiosalerts/nagioscriticalalerts.csv' FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n');
EOF

mail -s "DEVELOPMENT SERVER LAST 24 Hrs NAGIOS ALERTS LIST" -r omnilinux@justdial.com -a "/var/lib/mysql-files/nagiosalerts/nagiosalerts.csv" -a "/var/lib/mysql-files/nagiosalerts/nagioscriticalalerts.csv" omnilinux@justdial.com << EOF
Development server alert lists of last 24 hrs. 
1. File nagiosalerts.csv contains alerts which became ok.
2. File nagioscriticalalerts.csv contains alerts which are still critical.
EOF

mv /var/lib/mysql-files/nagiosalerts/nagiosalerts.csv /var/lib/mysql-files/nagiosalerts/nagiosalerts$DATE.csv
mv /var/lib/mysql-files/nagiosalerts/nagioscriticalalerts.csv /var/lib/mysql-files/nagiosalerts/nagioscriticalalerts$DATE.csv

