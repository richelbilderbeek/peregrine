#!/bin/bash
#SBATCH --mem=10G 
module load R
Rscript install_rstan.R
