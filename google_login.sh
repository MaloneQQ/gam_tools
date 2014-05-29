#!/bin/bash
#This will run a google apps command to grab all of the login history for the google apps domain.
#Logs are stored /var/log/google_logins.log
###################################################
 
run="python /path/to/gam/gam.py report logins"
log="/path/to/gam/directory/login_history.log"
 
 
rm $log
$run > $log
 
IFS="
    "
for line in $(cat $log)
    do
# echo "line is '${line}'"
    IFS="," read -ra a <<< "${line}"
 
    date=${a[0]}
    actor=${a[1]}
    action=${a[2]}
    ip=${a[3]}
    authentication=${a[4]}
    failure_type=${a[5]}
    is_suspicious=${a[6]}
 
 
 
 
    echo "date=${date} actor=${actor} action=${action} ip=${ip} authentication=${authentication} failure_type=${failure_type} is_suspicious=${is_suspicious}"
                                     done
