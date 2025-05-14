#!/bin/bash
logger "T1016 - Network Configuration Discovery"
ip addr

logger "T1057 - Process Discovery"
ps aux

logger "T1003.008 - Credential Access"
sudo cat /etc/shadow

logger "T1083 - File and Directory Discovery"
find /etc -type f -name "*.conf"

logger "T1053.003 - Scheduled Task via Cron"
echo "* * * * * root echo hello" | sudo tee /etc/cron.d/atomic-test
