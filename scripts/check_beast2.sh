#!/bin/bash
# Script to check if BEAST2 and the BEAST2 NS package are installed
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./check_beast2.sh
#
# Usage, on Peregrine:
#
#   sbatch ./check_beast2.sh
#
# Results:
#
# If BEAST2 and the BEAST2 NS package are installed, then:
#
# * the script will end with status COMPLETED,
# * the script will return with error code 0 (i.e. no error)
# * the log will show:
#
#    ````
#    [1] TRUE
#    ````
#
# If BEAST2 and the BEAST2 NS package are not installed, then:
#
# * the script will end with status FAILED,
# * the script will return with a non-zero error code (i.e. an error)
# * the log will show:
#
#    ````
#    Error: beastier::is_beast2_installed() is not TRUE
#    Execution halted
#    ````
#
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=check_beast2
#SBATCH --output=check_beast2.log
module load R
module load HDF5/1.10.1-foss-2018a
Rscript -e 'babette::bbt_self_test()'

