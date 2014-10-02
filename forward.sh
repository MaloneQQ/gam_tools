#!/bin/bash

#logging 

#clean up the log each time.
cd /Users/jpistone/gam/
rm forward_logging.log
rm forward_alert.log
touch forward_alert.log
touch forward_logging.log

#GAM command dumps to log file
python /Users/jpistone/gam/gam.py all users show forward > /Users/jpistone/gam/forward_logging.log


cat forward_logging.log | grep -v "Enabled:false" > forward_alert.log

mail -s "Daily Forward Email Alert" jpistone@etsy.com < forward_alert.log
