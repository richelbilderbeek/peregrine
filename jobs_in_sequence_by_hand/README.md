# jobs_in_sequence_by_hand

```
job1.sh
```

Observe the job ID. For a job ID of 12345, use:

```
sbatch --dependency=afterok:12345 job2.sh
```

