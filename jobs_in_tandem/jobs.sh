#!/bin/bash

# Clean up
rm job_1.txt

jobid=`sbatch job_1.sh`
echo "job id is "$jobid