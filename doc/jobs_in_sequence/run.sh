#!/bin/bash

# Start job1, store job ID
jobid=`sbatch job1.sh | cut -d ' ' -f 4`

# Start job2 after job1
sbatch --dependency=afterok:$jobid job2.sh
