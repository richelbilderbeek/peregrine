#!/bin/bash
# Script to uninstall MHCnuggets
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./uninstall_mhcnuggets.sh
#
# Usage, on Peregrine:
#
#   sbatch ./uninstall_mhcnuggets.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=uninstall_mhcnuggets
#SBATCH --output=uninstall_mhcnuggets.log
module load R
module load pip

Rscript -e 'if (mhcnuggetsr::is_mhcnuggets_installed()) mhcnuggetsr::uninstall_mhcnuggets()'

