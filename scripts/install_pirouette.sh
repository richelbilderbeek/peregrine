#!/bin/bash
# Script to install pirouette and its dependencies
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_pirouette.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_pirouette.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_pirouette
#SBATCH --output=install_pirouette.log
module load R
module load HDF5/1.10.1-foss-2018a

./install_mcbette.sh

Rscript -e 'remotes::install_github("thijsjanzen/nodeSub")'
Rscript -e 'remotes::install_github("Giappo/mbd")'
Rscript -e 'remotes::install_github("richelbilderbeek/tiebeaur")'
Rscript -e 'remotes::install_github("richelbilderbeek/pirouette")'


