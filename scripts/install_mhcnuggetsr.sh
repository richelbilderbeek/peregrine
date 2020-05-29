#!/bin/bash
# Script to install mhcnuggetsr and its dependencies
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_mhcnuggetsr.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_mhcnuggetsr.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_mhcnuggetsr
#SBATCH --output=install_mhcnuggetsr.log
module load R Python/3.8.2-GCCcore-9.3.0 binutils

Rscript -e 'remotes::install_github("richelbilderbeek/mhcnuggetsr")'

./install_mhcnuggets.sh

Rscript -e 'mhcnuggetsr::mhcnuggetsr_self_test()'

echo "If the self-test failed, so this on Peregrine:"
echo " "
echo "module load R"
echo "module load Python/3.8.2-GCCcore-9.3.0"
echo "R"
echo " "
echo "(now you are in R)"
echo " "
echo "library(mhcnuggetsr)"
echo "mhcnuggetsr_self_test()"
echo " "
echo "You will get the following message:""
echo " "
echo "  No non-system installation of Python could be found."
echo "  Would you like to download and install Miniconda?"
echo "  Miniconda is an open source environment management system for Python."
echo "  See https://docs.conda.io/en/latest/miniconda.html for more details."
echo "  "
echo "  Would you like to install Miniconda? [Y/n]:"
echo " "
echo "Pick yes to install Miniconda"
echo " "
echo " "
echo "Also try this from a terminal:"
echo " "
echo "python -m pip install numpy --user"
echo "python -m pip install ~/.local/share/mhcnuggets/ --user"

# 
# > install_mhcnuggets()
# ERROR: Could not install packages due to an EnvironmentError: [('/home/p230198/.local/share/mhcnuggets/.git/objects/pack/pack-1dd355527f837650a21ec9aa3fa2249c929b314b.pack', '/local/tmp/pip-req-build-vtoekd4p/.git/objects/pack/pack-1dd355527f837650a21ec9aa3fa2249c929b314b.pack', "[Errno 13] Permission denied: '/local/tmp/pip-req-build-vtoekd4p/.git/objects/pack/pack-1dd355527f837650a21ec9aa3fa2249c929b314b.pack'"), ('/home/p230198/.local/share/mhcnuggets/.git/objects/pack/pack-1dd355527f837650a21ec9aa3fa2249c929b314b.idx', '/local/tmp/pip-req-build-vtoekd4p/.git/objects/pack/pack-1dd355527f837650a21ec9aa3fa2249c929b314b.idx', "[Errno 13] Permission denied: '/local/tmp/pip-req-build-vtoekd4p/.git/objects/pack/pack-1dd355527f837650a21ec9aa3fa2249c929b314b.idx'")]



