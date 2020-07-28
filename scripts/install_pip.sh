#!/bin/bash

# Script to install pip
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_pip.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_pip.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_pip
#SBATCH --output=install_pip.log
module load R Python/3.8.2-GCCcore-9.3.0 binutils

my_python=$(Rscript -e "cat(reticulate::py_config()\$python)") 
echo "Reticulate Python path: "$my_python
$my_python -m pip install --upgrade pip --user
# python -m pip install --upgrade pip --user

