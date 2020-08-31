#!/bin/bash
# Script to send an email to me on Peregrine
#
# Usage, on Peregrine:
#
#   sbatch ./email_me.sh
#
# Peregrine directives:
#SBATCH --partition=vulture
#SBATCH --time=0:00:10
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1
#SBATCH --job-name=email_me
#SBATCH --output=email_me.log
#SBATCH --mail-type=END
#SBATCH --mail-user=richel@richelbilderbeek.nl

echo "Email sent"


