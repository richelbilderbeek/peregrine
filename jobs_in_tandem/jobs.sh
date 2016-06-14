#!/bin/bash

# Clean up
rm job_1.txt

script="
#!/bin/bash
#SBATCH --time=0:01:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1M
#SBATCH --job-name=job_1
#SBATCH --output=job_1.log
echo \"Created by job_1.sh\" > job_1.txt
"

echo "Script:"
$script

echo "Sending script to sbatch:"

sbatch $script

#jobid=`sbatch job_1.sh | cut -d ' ' -f 4`
#echo "job id is "$jobid