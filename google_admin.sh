#!/bin/bash
#
#This script will run the login history command. Then write it to a local file and then finally echoing it out with key value
#Logs are stored /var/log/google_admin.log
###################################################

run="python /path/to/gam/directory/gam.py report logins"
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
    modified_user=${a[4]}
    modified_group=${a[5]}



    echo "date=${date} actor=${actor} action=${action} ip=${ip} modified_user=${modified_user} modified_group=${modified_group}"
    done
