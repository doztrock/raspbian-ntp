#!/usr/bin/env bash

#
# Start the ntp service
#
service ntp start

#
# Keep the container running
#
tail -f /dev/null

