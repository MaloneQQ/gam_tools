#!/bin/bash
#
#Best option is to enforce 2factor authentication across the orginization. Then use a DMZ group for configuring users.
#If you can not enforce 2factor authentication then this might help alert you of a user who unenrolls themself.
###########################################

gam="/path/gam/directory/gam.py"

python $gam report users fields 'accounts:is_2sv_enforced,accounts:is_2sv_enrolled'
