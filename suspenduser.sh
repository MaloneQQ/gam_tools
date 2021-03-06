#!/bin/bash
#Suspends user account. I added a "are you sure" option just in case
#########################

gam="/path/to/gam/gam.py"

GAM_USER=$1

if [ -z $GAM_USER ];
then
        echo "Usage: $0 <username>"
        exit 2
fi

read -p "Are you sure you want to suspend $GAM_USER? (Press Y or N) " -n 1
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
      exit 1
  fi

python $gam update user $GAM_USER suspended on


echo "$GAM_USER has been suspended."

