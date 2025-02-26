#!/bin/bash

# Test ping (latency) to a common server (Google DNS)
ping_result=$(ping -c 4 8.8.8.8 | tail -1| awk '{print $4}' | cut -d '/' -f 2)

# # Test download speed using wget
# download_speed=$(wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip 2>&1 | grep -oP '[0-9.]+ (?=[KM]B/s)')


# Output the results
echo "Ping (latency): $ping_result ms"
# echo "Download speed: $download_speed"
