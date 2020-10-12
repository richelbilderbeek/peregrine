#!/bin/bash
#
# Script to collect the IDs of the regular jobs that are running for the user
#
# Usage (from any folder):
#
#  ./collect_running_regular_job_ids.sh
#
squeue -u $USER | egrep " {1,20}[[:digit:]]{4,10} {1,4}regular " | tail -n +2 | cut -d " " -f 11 | tr '\n' ',' | sed 's/.$//'

