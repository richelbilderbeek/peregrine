# jobs_in_parallel

Goal of this is to create a pipeline as such:

```
job1_master.sh -> job1_slave.sh -> job2.sh
               -> job1_slave.sh -> 
               -> job1_slave.sh -> 
               -> job1_slave.sh -> 
               -> job1_slave.sh -> 
               -> job1_slave.sh -> 
               -> job1_slave.sh -> 
               -> job1_slave.sh -> 
               -> job1_slave.sh -> 
               -> job1_slave.sh -> 
```