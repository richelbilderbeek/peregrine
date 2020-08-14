#!/bin/bash
# Script to install protein_sequence_finder
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_magick.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_magick.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_magick
#SBATCH --output=install_magick.log
module load R ImageMagick

Rscript -e 'install.packages("magick")'

