#!/bin/bash
# Script to install netmhc2pan
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_netmhc2pan.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_netmhc2pan.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_netmhc2pan
#SBATCH --output=install_netmhc2pan.log
module load R

# Install the package
Rscript -e 'remotes::install_github("richelbilderbeek/netmhc2pan")'

# Install NetMHC2pan
Rscript -e 'netmhc2pan::install_netmhc2pan()'

