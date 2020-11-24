#!/bin/bash
# Script to install cobaltr and its dependencies
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_cobaltr.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_cobaltr.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_cobaltr
#SBATCH --output=install_cobaltr.log
module load R

Rscript -e 'remotes::install_github("richelbilderbeek/cobaltr")'

./install_cobalt.sh

Rscript -e 'cobaltr::cobaltr_self_test()'

