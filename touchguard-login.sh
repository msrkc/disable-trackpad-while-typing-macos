#!/bin/bash
exec > /tmp/touchguard.log 2>&1
echo "Script started at $(date)"
sleep 10  # Wait for 10 seconds to ensure system readiness
sudo /usr/local/bin/TouchGuard -time 0.2
echo "TouchGuard completed at $(date)"
