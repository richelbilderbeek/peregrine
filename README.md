# Peregrine

My notes, presentations and testing scripts about the Peregrine cluster.

## Presentations

 * Running (independent) jobs on the Peregrine computer cluster [PDF](independent_jobs.pdf) [ODP](independent_jobs.odp)
 * Running jobs with dependencies on the Peregrine computer cluster [PDF](job_dependencies.pdf) [ODP](job_dependencies.odp)

## Do a `git pull`

```
module load git; git pull
```

## Copy from Peregrine to local computer

Must be run on local LWP computer:

```
scp p230198@peregrine.hpc.rug.nl:/home/p230198/GitHubs/Cer2016/*.RDa ~/Peregrine
```

## Define an alias to log in to Peregrine

On your home/local computer, do:

```
echo "alias p='ssh p230198@peregrine.hpc.rug.nl'" >> ~/.bashrc
```

Now just type `p` to log in to Peregrine

## Define an alias to view the queue

On the Peregrine computer cluster, do:

```
echo "alias q='squeue -u $USER'" >> ~/.bash_profile
```

Do not use `.bashrc`, as this will disable using `scp`.

Now just type `q` to view your jobs in the queue.

## Get a welcome message

```
echo "cowsay -f stegosaurus 'Welcome master'" >> ~/.bash_profile
```

Do not use `.bashrc`, as this will disable using `scp`.

## Put job first in your queue

`scontrol top <jobid>`

### How much does Peregrine love its users?

Me:

```
sshare
```

All:

```
sshare -a
```