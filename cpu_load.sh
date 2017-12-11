
#!/bin/bash
#this script for current cpu load for 1 min and 5 min

load1=`uptime | sed 's/,//g' | awk '{ print $11 }' | cut -d'.' -f1`
load2=`uptime | sed 's/,//g' | awk '{ print $12 }' | cut -d'.' -f1`

if [ $load1 -ge 16 ] || [ $load2 -ge 16 ]; then
   load1=`uptime | sed 's/,//g' | awk '{ print $11 }'`
   load2=`uptime | sed 's/,//g' | awk '{ print $12 }'`
   echo "WARNING - load average: $load1 $load2"
   exit 1

elif [ $load1 -ge 18 ] || [ $load2 -ge 18 ]; then
   load1=`uptime | sed 's/,//g' | awk '{ print $11 }'`
   load2=`uptime | sed 's/,//g' | awk '{ print $12 }'`
   echo "CRITICAL - load average: $load1 $load2"
   exit 2

else
   load1=`uptime | sed 's/,//g' | awk '{ print $11 }'`
   load2=`uptime | sed 's/,//g' | awk '{ print $12 }'`
   echo "OK - load average: $load1 $load2"
   exit 0

fi
