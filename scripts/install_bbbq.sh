#!/bin/bash
# Script to install bbbq and its dependencies
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_bbbq.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_bbbq.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_bbbq
#SBATCH --output=install_bbbq.log
module load R

./install_netmhc2pan.sh
./install_nmhc2ppreds.sh
./install_epitope_prediction.sh
./install_epiprepreds.sh
./install_pureseqtmr.sh
./install_mhcnuggetsr.sh
./install_mhcnpreds.sh

Rscript -e 'remotes::install_github("richelbilderbeek/bbbq", ref = "develop")'

