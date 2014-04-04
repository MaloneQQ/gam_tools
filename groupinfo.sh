#!/bin/bash
#
#This will give you info on a group including users and permission level
###############################
gam="/path/to/gam/gam.py"

GAM_GROUP=$1

if [ -z $GAM_GROUP ];
then
        echo "Usage: $0 <groupname>"
        exit 2
fi

python $gam info group $GAM_GROUP

