#!/bin/bash
# Script to install the msa Bioconductor package
# and its dependencies
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_msa.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_msa.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_msa
#SBATCH --output=install_msa.log
module load R

Rscript -e 'if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager", repos = "https://cloud.r-project.org")'
Rscript -e 'BiocManager::install("msa")'

