#!/bin/bash

# Script to install MHCnuggets
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_mhcnuggets.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_mhcnuggets.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_mhcnuggets
#SBATCH --output=install_mhcnuggets.log
module load R Python/3.8.2-GCCcore-9.3.0 binutils

# Do not install pip: mhcnuggetsr must do that
#
# my_python=$(Rscript -e "cat(reticulate::py_config()\$python)") 
# echo "Reticulate Python path: "$my_python
# $my_python -m pip install --upgrade pip --user

Rscript -e 'if (!mhcnuggetsr::is_mhcnuggets_installed()) mhcnuggetsr::install_mhcnuggets()'


