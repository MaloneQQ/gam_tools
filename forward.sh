#!/bin/bash
#Very Dirty script to
#alert if someone is forwarding
#mail to another account.
##################################

#clean up the log each time.
cd /path/to/gam_dir
rm forward_logging.log
rm forward_alert.log
touch forward_alert.log
touch forward_logging.log

#GAM command dumps to log file
python /path/to/gam_dir/gam.py all users show forward > /path/to/log/in/gam_dir/gam/forward_logging.log

#Cats the above log file and removes all false values
cat forward_logging.log | grep -v "Enabled:false" > forward_alert.log

#Adds some context to the body of the email.
sed -i '1s/^/The Following Mailboxes are being forwarded:\n/' forward_alert.log

#The internet is made of cats!
mail -s "netsec: Daily Forward Report" mailtoaddress < forward_alert.log
