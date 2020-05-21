#!/bin/bash
# Script to install hdf5r and its dependencies
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_hdf5r.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_hdf5r.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_hdf5r
#SBATCH --output=install_hdf5r.log

# Modules to choose from, using 'module spider HDF5':
#
# HDF5/1.8.16-foss-2016a-serial
# HDF5/1.8.16-foss-2016a
# HDF5/1.8.16-intel-2016a
# HDF5/1.8.17-foss-2016a
# HDF5/1.8.17-intel-2016a
# HDF5/1.8.18-foss-2016a
# HDF5/1.10.1-foss-2018a
# HDF5/1.10.1-fosscuda-2018a
# HDF5/1.10.1-intel-2018a
# HDF5/1.10.2-intel-2018b
# HDF5/1.10.5-gompi-2019a
# HDF5/1.10.5-gompi-2019b
# HDF5/1.10.5-gompic-2019a
# HDF5/1.10.5-gompic-2019b

# Load the most recent module
module load HDF5/1.10.5-gompic-2019b

Rscript -e 'install.packages("hdf5r", repos = "https://cloud.r-project.org")'
#Rscript -e 'devtools::update_packages("hdf5r", upgrade = "always")'


