#!/bin/bash
# Script to install peregrine and its dependencies
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_peregrine.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_peregrine.sh
#
# Peregrine directives:
#SBATCH --partition=gelifes
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_peregrine
#SBATCH --output=install_peregrine.log
module load R
module load HDF5/1.10.1-foss-2018a

./install_pirouette.sh

Rscript -e 'remotes::install_github("richelbilderbeek/peregrine")'

