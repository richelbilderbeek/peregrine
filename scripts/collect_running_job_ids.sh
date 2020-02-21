#!/bin/bash
#
# Script to collect the IDs of the jobs that are running for the user
#
# Usage (from any folder):
#
#  ./collect_running_job_ids.sh
#
squeue -u $USER | tail -n +2 | cut -d " " -f 12 | tr '\n' ',' | sed 's/.$//'
