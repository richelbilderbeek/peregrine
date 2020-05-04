#!/bin/bash
# Script to check if mcbette and its dependencies,
# (including BEAST2 and the BEAST2 NS package)
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./check_mcbette.sh
#
# Usage, on Peregrine:
#
#   sbatch ./check_mcbette.sh
#
# Results:
#
# If mcbette and its dependencies are installed, then:
#
# * the script will end with status COMPLETED,
# * the script will return with error code 0 (i.e. no error)
# * the log will show:
#
#    ````
#    [1] TRUE
#    ````
#
# If mcbette and its dependencies are not installed, then:
#
# * the script will end with status FAILED,
# * the script will return with a non-zero error code (i.e. an error)
# * the log will show:
#
#    ````
#    Error: ...
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
#SBATCH --job-name=check_mcbette
#SBATCH --output=check_mcbette.log
module load R
module load HDF5/1.10.1-foss-2018a
Rscript -e 'mcbette::mcbette_self_test()'

