#!/bin/bash
#
#This will get you user info, including the groups they are in.
#################################

gam="/path/to/gam/gam.py"

GAM_USER=$1

if [ -z $GAM_USER ];
then
        echo "Usage: $0 <username>"
        exit 2
fi

python $gam info user $GAM_USER

