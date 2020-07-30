#!/bin/bash
#
# See who is online.
#
# Usage:
#
#   ./who_is_online.sh
#
finger $(top -bc -n 1 | cut -d " " -f 2 | sort -u | egrep "(s|d)[[:digit:]]{7}") | egrep "Name: .*$"
