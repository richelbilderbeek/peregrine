# jobs_in_parallel

Goal of this is to create a pipeline as such:

```
job_1.sh -> file_1.txt -> job_2.sh -> job_3.sh
            file_2.txt -> job_2.sh -> 
            file_3.txt -> job_2.sh -> 
            file_4.txt -> job_2.sh -> 
            file_5.txt -> job_2.sh -> 
            etcetera 
```



In this pipeline:
1) a random number from one to ten files are created
2) each file must be processed in parallel
3) after all jobs have finished, these files must be processed

All jobs are started with:

```
jobs.sh
```

## In detail

```
                          +-----------------+
                          | job_2_master.sh |
                          +-----------------+
job_1.sh -> file_1.txt -> | job_2_slave.sh  | -> job_3.sh
            file_2.txt -> | job_2_slave.sh  | ->
            file_3.txt -> | job_2_slave.sh  | ->
            file_4.txt -> | job_2_slave.sh  | ->
            file_5.txt -> | job_2_slave.sh  | ->
            etcetera      +-----------------+
```
