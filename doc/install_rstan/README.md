# install_rstan

Installing the R package `rstan` from the login node 
fails on Peregrine, due to the lack of memory in the linking phase.

Solution is to do this installation on a normal node, with 10GB of memory.

Run with:

```
sbatch install_rstan.sh
```