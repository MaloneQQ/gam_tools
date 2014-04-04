#!/bin/bash
#This is a check to scan the Gmail for forwarders
#GAM command
python gam.py all users show forward > forward.txt

cat forward.txt | grep -v "Enabled:false" | grep -v "{anything you wanted to whitelist}"


echo "Forward check is complete"
