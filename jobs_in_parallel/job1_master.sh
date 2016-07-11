#!/bin/bash
#SBATCH --time=0:01:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1M
#SBATCH --job-name=job1_master
#SBATCH --output=job1_master.log

# Start file creation
echo "Created by job1 master" > out.txt

# Array to hold all the job IDs
jobids=()

# Start all jobs, while collecting the job IDs
for i in {1..10}
do
  cmd="sbatch job1_slave.sh $i"
  jobids+=(`$cmd | cut -d ' ' -f 4`)
done

# Convert array of job IDs to colon-seperated string
txt=$(printf ":%s" "${jobids[@]}")
txt=${txt:1}
echo $txt 

# Start job2 after all previous jobs have finished
sbatch --dependency=afterok:$txt job2.sh
