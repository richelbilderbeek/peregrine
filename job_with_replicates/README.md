# job_with_rep

To run `job_with_rep` on the cluster nodes, use:

```
./run
```

This will put multiple `job_with_rep`s in the queue.

`job_with_rep` will display a random number on screen.

On Peregrine, this output will be written to multiple log files.
In `job_with_rep` the filenames of this log are set to `my-[number].log`, 
where `[number]` is the job ID of `job_with_rep`