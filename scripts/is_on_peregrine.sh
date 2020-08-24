#!/bin/bash
# Script to detect if it is run on Peregrine
#
# Usage, locally:
#
#   ./is_on_peregrine.sh
#
# Usage, on Peregrine:
#
#   sbatch ./is_on_peregrine.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=is_on_peregrine
#SBATCH --output=is_on_peregrine.log
module load R
Rscript -e 'Sys.getenv("HOSTNAME")'
Rscript -e 'peregrine::is_on_peregrine()'
Rscript -e 'peregrine::is_on_peregrine_login_node()'
Rscript -e 'peregrine::is_on_peregrine_worker_node()'


