#!/bin/bash
#This will let you know if the email address is an alias or a mailbox
#######################
gam="/path/to/gam/gam.py"

GAM_ALIAS=$1

if [ -z $GAM_ALIAS ];
then
        echo "Usage: $0 <aliasname>"
        exit 2
fi

python $gam info alias $GAM_ALIAS

