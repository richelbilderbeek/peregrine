# jobs_in_parallel

Goal of this is to create a pipeline as such:

```
            job_2.sh
job_1.sh -> job_2.sh -> job_3.sh
            job_2.sh
```

This can be done by submitting all jobs and adding a dependency.

All jobs are started with:

```
jobs.sh
```