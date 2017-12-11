#!/bin/bash
#this script for disable all services check of the host
echo "1.192.168.12.57"
echo "2.192.168.12.58"
echo "3.192.168.23.165"
echo "4.192.168.23.166"
echo "5.192.168.23.51"
echo "6.192.168.23.52"
echo "7.192.168.23.53"
echo "8.192.168.23.54"
echo "9.192.168.23.55"
echo "10.192.168.23.56"
echo "11.192.168.23.57"
echo "12.192.168.23.58"
echo "13.192.168.23.59"
echo "14.192.168.23.60"
echo "15.192.168.23.61"
echo "16.192.168.23.62"
echo "17.192.168.23.65"
echo "18.192.168.23.66"
echo "19.192.168.23.67"

echo "Enter the choice for you want to disable active checks: "

read NUM
case $NUM in
          1) echo "192.168.12.57"
	     echo "Service_check disabled"
	     `/usr/bin/curl curl --silent -d "cmd_mod=2&cmd_typ=16&host=12-57-Datajanus1&btnSubmit=commit" "http://192.168.23.170/nagios/cgi-bin/cmd.cgi" -u "nagiosadmin:admin123" 1> /dev/null` 
		;;
	  2) echo "192.168.12.58"
             echo "Service_check disabled"
             `/usr/bin/curl curl --silent -d "cmd_mod=2&cmd_typ=16&host=12-58-Datajanus2&btnSubmit=commit" "http://192.168.23.170/nagios/cgi-bin/cmd.cgi" -u "nagiosadmin:admin123" 1> /dev/null`
                ;;
	  3) echo "192.168.23.165"
             echo "Service_check disabled"
             `/usr/bin/curl curl --silent -d "cmd_mod=2&cmd_typ=16&host=23-165-IDC.justdial.com&btnSubmit=commit" "http://192.168.23.170/nagios/cgi-bin/cmd.cgi" -u "nagiosadmin:admin123" 1> /dev/null`
                ;;
	  4) echo "192.168.23.166"
             echo "Service_check disabled"
             `/usr/bin/curl curl --silent -d "cmd_mod=2&cmd_typ=16&host=23-166-IDC.justdial.com&btnSubmit=commit" "http://192.168.23.170/nagios/cgi-bin/cmd.cgi" -u "nagiosadmin:admin123" 1> /dev/null`
                ;;
	  5) echo "192.168.23.51"
             echo "Service_check disabled"
             `/usr/bin/curl curl --silent -d "cmd_mod=2&cmd_typ=16&host=23-51-Mongo-Redis&btnSubmit=commit" "http://192.168.23.170/nagios/cgi-bin/cmd.cgi" -u "nagiosadmin:admin123" 1> /dev/null`
                ;;
	  6) echo "192.168.23.52"
             echo "Service_check disabled"
             `/usr/bin/curl curl --silent -d "cmd_mod=2&cmd_typ=16&host=23-52-Mongo-Redis&btnSubmit=commit" "http://192.168.23.170/nagios/cgi-bin/cmd.cgi" -u "nagiosadmin:admin123" 1> /dev/null`
                ;;
	  7) echo "192.168.23.53"
             echo "Service_check disabled"
             `/usr/bin/curl curl --silent -d "cmd_mod=2&cmd_typ=16&host=23-53-Mongo-Redis&btnSubmit=commit" "http://192.168.23.170/nagios/cgi-bin/cmd.cgi" -u "nagiosadmin:admin123" 1> /dev/null`
                ;;
          8) echo "192.168.23.54"
             echo "Service_check disabled"
             `/usr/bin/curl curl --silent -d "cmd_mod=2&cmd_typ=16&host=23-54-MYMAS1-RMQ-JP&btnSubmit=commit" "http://192.168.23.170/nagios/cgi-bin/cmd.cgi" -u "nagiosadmin:admin123" 1> /dev/null`
                ;;
	  9) echo "192.168.23.55"
             echo "Service_check disabled"
             `/usr/bin/curl curl --silent -d "cmd_mod=2&cmd_typ=16&host=23-55-MYMAS2-RMQ-JP&btnSubmit=commit" "http://192.168.23.170/nagios/cgi-bin/cmd.cgi" -u "nagiosadmin:admin123" 1> /dev/null`
                ;;
	  10) echo "192.168.23.56"
              echo "Service_check disabled"
             `/usr/bin/curl curl --silent -d "cmd_mod=2&cmd_typ=16&host=23-56-mpweb-MYMAS1-Sl&btnSubmit=commit" "http://192.168.23.170/nagios/cgi-bin/cmd.cgi" -u "nagiosadmin:admin123" 1> /dev/null`
                ;;
	  11) echo "192.168.23.57"
              echo "Service_check disabled"
             `/usr/bin/curl curl --silent -d "cmd_mod=2&cmd_typ=16&host=23-57-mpweb-MYMAS1-Sl&btnSubmit=commit" "http://192.168.23.170/nagios/cgi-bin/cmd.cgi" -u "nagiosadmin:admin123" 1> /dev/null`
                ;;
	  12) echo "192.168.23.58"
              echo "Service_check disabled"
             `/usr/bin/curl curl --silent -d "cmd_mod=2&cmd_typ=16&host=23-58-mpweb-MYMAS2-Sl&btnSubmit=commit" "http://192.168.23.170/nagios/cgi-bin/cmd.cgi" -u "nagiosadmin:admin123" 1> /dev/null`
                ;;
	  13) echo "192.168.23.59"
              echo "Service_check disabled"
             `/usr/bin/curl curl --silent -d "cmd_mod=2&cmd_typ=16&host=23-59-mpweb-MYMAS2-Sl&btnSubmit=commit" "http://192.168.23.170/nagios/cgi-bin/cmd.cgi" -u "nagiosadmin:admin123" 1> /dev/null`
                ;;
   	  14) echo "192.168.23.60"
              echo "Service_check disabled"
             `/usr/bin/curl curl --silent -d "cmd_mod=2&cmd_typ=16&host=23-60-SolrCloud-ZK&btnSubmit=commit" "http://192.168.23.170/nagios/cgi-bin/cmd.cgi" -u "nagiosadmin:admin123" 1> /dev/null`
                ;;
 	  15) echo "192.168.23.61"
              echo "Service_check disabled"
             `/usr/bin/curl curl --silent -d "cmd_mod=2&cmd_typ=16&host=23-61-SolrCloud-ZK&btnSubmit=commit" "http://192.168.23.170/nagios/cgi-bin/cmd.cgi" -u "nagiosadmin:admin123" 1> /dev/null`
                ;;
	  16) echo "192.168.23.62"
              echo "Service_check disabled"
             `/usr/bin/curl curl --silent -d "cmd_mod=2&cmd_typ=16&host=23-62-SolrCloud-ZK&btnSubmit=commit" "http://192.168.23.170/nagios/cgi-bin/cmd.cgi" -u "nagiosadmin:admin123" 1> /dev/null`
                ;;
	  17) echo "192.168.23.65"
              echo "Service_check disabled"
             `/usr/bin/curl curl --silent -d "cmd_mod=2&cmd_typ=16&host=23-65-IDC.justdial.com&btnSubmit=commit" "http://192.168.23.170/nagios/cgi-bin/cmd.cgi" -u "nagiosadmin:admin123" 1> /dev/null`
                ;;
	  18) echo "192.168.23.66"
              echo "Service_check disabled"
             `/usr/bin/curl curl --silent -d "cmd_mod=2&cmd_typ=16&host=23-66-Android&btnSubmit=commit" "http://192.168.23.170/nagios/cgi-bin/cmd.cgi" -u "nagiosadmin:admin123" 1> /dev/null`
                ;;
	  19) echo "192.168.23.67"
              echo "Service_check disabled"
             `/usr/bin/curl curl --silent -d "cmd_mod=2&cmd_typ=16&host=23-67-IDC.justdial.com&btnSubmit=commit" "http://192.168.23.170/nagios/cgi-bin/cmd.cgi" -u "nagiosadmin:admin123" 1> /dev/null`
                ;;


esac
