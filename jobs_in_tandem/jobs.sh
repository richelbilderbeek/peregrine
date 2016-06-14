#!/bin/bash

# Clean up
rm job_1.txt

jobid=`sbatch job_1.sh | cut -d ' ' -f 4`
echo "job id is "$jobid