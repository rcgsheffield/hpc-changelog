---
title:  "Bessemer Slurm config change: enabled pre-emptable jobs"
category: New
tags: Bessemer Slurm pre-emptable
---

Users can submit _pre-emptable_ jobs to make use of idle CPUs and/or GPUs in private nodes in Bessemer.  If the owners of those private nodes then submit jobs that require those resources to run then the pre-emptable jobs will be cancelled.

More information: [https://docs.hpc.shef.ac.uk/en/latest/sharc/software/development/cmake.html](https://docs.hpc.shef.ac.uk/en/latest/sharc/software/development/cmake.html)
