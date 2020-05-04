#!/bin/bash
# Script to install babette and its dependencies
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_babette.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_babette.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_babette
#SBATCH --output=install_babette.log
module load R
module load HDF5/1.10.1-foss-2018a

Rscript -e 'remotes::install_github("ropensci/beautier")'
Rscript -e 'remotes::install_github("ropensci/tracerer")'
Rscript -e 'remotes::install_github("ropensci/beastier")'
Rscript -e 'remotes::install_github("ropensci/mauricer")'
Rscript -e 'remotes::install_github("ropensci/babette")'

./install_beast2.sh


