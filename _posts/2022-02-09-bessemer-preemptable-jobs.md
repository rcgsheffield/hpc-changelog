---
title:  "Bessemer Slurm config change: enabled preemptable jobs"
category: New
tags: Bessemer Slurm preemptable
---

Users can submit _preemptable_ jobs to make use of idle CPUs and/or GPUs in private nodes in Bessemer.  If the owners of those private nodes then submit jobs that require those resources to run then the preemptable jobs will be cancelled.

More information: [https://docs.hpc.shef.ac.uk/en/latest/hpc/scheduler/index.html#preemptable-jobs](https://docs.hpc.shef.ac.uk/en/latest/hpc/scheduler/index.html#preemptable-jobs)
