#!/bin/bash
# Call with 'sbatch ./sbatch_me'
#SBATCH --time=240:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --ntasks=8
#SBATCH --mem=10G
#SBATCH --job-name=article
#SBATCH --mail-type=BEGIN,END
module load beagle-lib Beast
beast -beagle_info
beast -threads 8 -beagle example.xml
