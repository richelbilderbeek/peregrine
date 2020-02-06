#!/bin/bash
# Script to install BEAST2 and the BEAST2 NS package
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_beast2.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_beast2.sh
#
# Peregrine directives:
#SBATCH --partition=gelifes
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_beast2
#SBATCH --output=install_beast2.log
module load R
module load HDF5/1.10.1-foss-2018a

Rscript -e 'if (!beastier::is_beast2_installed()) beastier::install_beast2()'
Rscript -e 'if (!mauricer::is_beast2_pkg_installed("NS")) mauricer::install_beast2_pkg("NS")'


