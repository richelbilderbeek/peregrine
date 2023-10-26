#!/bin/bash
#
# Script to collect the IDs of the vulture jobs that are running for the user
#
# Usage (from any folder):
#
#  ./collect_running_vulture_job_ids.sh
#
squeue -u "${USER}" | grep -E " {1,20}[[:digit:]]{4,10} {1,4}vulture " | tail -n +2 | cut -d " " -f 11 | tr '\n' ',' | sed 's/.$//'

