# Peregrine

My notes, presentations and testing scripts about the Peregrine cluster.

## Presentations

 * Setting up a pipeline [PDF](setting_up_a_pipeline.pdf) [ODP](setting_up_a_pipeline.odp)

## Do a `git pull`

```
module load git; git pull
```

## Copy from Peregrine to local computer

Must be run on local LWP computer:

```
scp p230198@peregrine.hpc.rug.nl:/home/p230198/GitHubs/Cer2016/*.RDa ~/Peregrine
```

## Define an alias to view the queue

```
echo "alias q='squeue -u $USER'" >> ~/.bashrc
```

Now just type `q` to view your jobs in the queue.

