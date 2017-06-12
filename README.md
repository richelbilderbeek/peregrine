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

```
Hoi Richel,

SLURM biedt sinds een van de laatste versies wel een mogelijkheid om dit te doen: met "scontrol top <jobid>" kun je een eigen job bovenaan de queue van eigen jobs zetten. Effectief zou het er op neer moeten komen dat SLURM de prioriteit van al je andere jobs iets verlaagt aan de hand van een nice-waarde (welke je zelf kunt aanpassen om de prioriteit van een job te verlagen). Verder werkt het alleen ten opzichte van jobs in o.a. dezelfde partitie:

Move the specified job ID to the top of the queue of jobs belonging to the identical user ID, partition name, account, and QOS. Any job not matching all of those fields will not be effected. Only jobs submitted to a single partition will be effected. This operation changes the order of jobs by adjusting job nice values. The net effect on that user's throughput will be negligible to slightly negative. This operation may be disabled by the system administrator by including the option "disable_user_top" in the SchedulerParameters configuration parameter. 

Ik heb dit nog nooit getest, maar misschien zou je eens kunnen proberen of dat werkt?

Groet,
Bob
```