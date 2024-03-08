#!/bin/bash
 a=`df -h | awk '{print $5,$6,$7}'|grep %|grep -v Use|cut -d "%" -f1|sed -n '4p'|sort -n`
 alertspace=70

if [ $a -ge $alertspace ]
then
     echo "Diskpace expansion needed" 
else
    echo "Diskspace is OK"
fi    
	 
