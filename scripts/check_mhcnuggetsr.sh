#!/bin/bash
# Script to check mhcnuggetsr and its dependencies
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./check_mhcnuggetsr.sh
#
# Usage, on Peregrine:
#
#   sbatch ./check_mhcnuggetsr.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=check_mhcnuggetsr
#SBATCH --output=check_mhcnuggetsr.log
module load R Python/3.8.2-GCCcore-9.3.0 binutils

Rscript -e 'mhcnuggetsr::mhcnuggetsr_self_test()'

Rscript -e 'mhcnuggetsr::mhcnuggetsr_report()'

