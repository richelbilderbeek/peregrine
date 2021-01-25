#!/bin/bash
# Script to install bianchietal2017 and its dependencies
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_bianchietal2017.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_bianchietal2017.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_bianchietal2017
#SBATCH --output=install_bianchietal2017.log
module load R libgit2
Rscript -e 'remotes::install_github("richelbilderbeek/bianchi_et_al_2017")'

