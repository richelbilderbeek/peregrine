#!/bin/bash
# Script to send an email to me on Peregrine
#
# Usage, on Peregrine:
#
#   sbatch ./email_me.sh
#
# Peregrine directives:
#SBATCH --time=0:01:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=10
#SBATCH --job-name=email_me
#SBATCH --output=email_me.log
#SBATCH --mail-user=r.j.c.bilderbeek@rug.nl

echo "Email sent"


