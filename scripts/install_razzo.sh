#!/bin/bash
# Script to install razzo and its dependencies
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_razzo.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_razzo.sh
#
# Peregrine directives:
#SBATCH --partition=gelifes
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_razzo
#SBATCH --output=install_razzo.log
module load R
module load HDF5/1.10.1-foss-2018a

./install_peregrine.sh

Rscript -e 'remotes::install_github("Giappo/mbd.SimTrees")'
Rscript -e 'remotes::install_github("richelbilderbeek/raztr")'
Rscript -e 'remotes::install_github("richelbilderbeek/razzo")'

