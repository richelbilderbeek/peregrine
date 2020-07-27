#!/bin/bash
# Script to install csv2latex
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_csv2latex.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_csv2latex.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_csv2latex
#SBATCH --output=install_csv2latex.log

pip install --user csv2latex

