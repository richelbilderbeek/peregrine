#!/bin/bash
# Script to install nmhc2ppreds
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_nmhc2ppreds.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_nmhc2ppreds.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_nmhc2ppreds
#SBATCH --output=install_nmhc2ppreds.log
module load R

./install_netmhc2pan.sh

Rscript -e 'remotes::install_github("richelbilderbeek/nmhc2ppreds")'


