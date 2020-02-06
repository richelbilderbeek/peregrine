#!/bin/bash
# Script to uninstall BEAST2 and the BEAST2 NS package
# on the Peregrine computer cluster.
#
# Usage, locally:
#
#   ./uninstall_beast2.sh
#
# Usage, on Peregrine:
#
#   sbatch ./uninstall_beast2.sh
#
# Peregrine directives:
#SBATCH --partition=gelifes
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=uninstall_beast2
#SBATCH --output=uninstall_beast2.log
module load R
module load HDF5/1.10.1-foss-2018a

Rscript -e 'if (beastier::is_beast2_installed() && mauricer::is_beast2_pkg_installed("NS")) mauricer::uninstall_beast2_pkg("NS")'
Rscript -e 'if (beastier::is_beast2_installed()) beastier::uninstall_beast2()'

