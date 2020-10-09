#!/bin/bash
# Script to install mcbette and its dependencies
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_mcbette.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_mcbette.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_mcbette
#SBATCH --output=install_mcbette.log
module load R
module load HDF5/1.10.1-foss-2018a

./install_babette.sh

Rscript -e 'remotes::install_github("ropensci/mcbette")'


Rscript -e 'remotes::install_github("thijsjanzen/nLTT", ref = "v1.4.3", dependencies = TRUE)'
Rscript -e 'remotes::install_github("thijsjanzen/nodeSub", ref = "v0.4.2", dependencies = TRUE)'
Rscript -e 'remotes::install_github("richelbilderbeek/pirouette", ref = "v1.6.2", dependencies = TRUE)'
Rscript -e 'remotes::install_github("richelbilderbeek/peregrine", ref = "v1.0", dependencies = TRUE)'
Rscript -e 'remotes::install_github("Giappo/mbd", ref = "v1.0", dependencies = TRUE)'
Rscript -e 'remotes::install_github("Giappo/mbd.SimTrees", ref = "v0.1", dependencies = TRUE)'
Rscript -e 'remotes::install_github("richelbilderbeek/becosys", ref = "v1.0.1", dependencies = TRUE)'
Rscript -e 'remotes::install_github("richelbilderbeek/raztr", ref = "v1.0", dependencies = TRUE)'
Rscript -e 'remotes::install_github("richelbilderbeek/razzo", ref = "richel", dependencies = TRUE)'
Rscript -e 'if (!beastier::is_beast2_installed()) beastier::install_beast2()'
Rscript -e 'if (!mauricer::is_beast2_pkg_installed("NS")) mauricer::install_beast2_pkg("NS")'


