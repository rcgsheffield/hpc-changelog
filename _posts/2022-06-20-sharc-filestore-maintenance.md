---
title:  "ShARC unavailable on 5th July (filestore maintenance work)"
category: New
tags: ShARC HPC maintenance
---

On 5th July ShARC will be unavailable due to maintenance work, as data in several key storage areas including home directories is being migrated from older file servers to newer ones.  Access to and use of the Bessemer HPC cluster will not be affected by this work, neither will direct user access to research storage areas via CIFS/SMB clients.

The data migration work is scheduled to take place between 09:00 to 12:00 on that day but all user activity on the cluster should cease before then and you should assume that the cluster won’t be usable earlier in the day on 5th July.  We’ll update users via hpc-announce@sheffield.ac.uk once the work is complete and should there be any delays.

Any user activity on the cluster at 09:00 of 5th July will be terminated including: SSH sessions on login nodes, interactive and batch jobs on worker nodes, interactive JupyterHub and myApps/SGD sessions, periodic jobs and file transfers to/from the cluster (via SCP/rsync).  During the maintenance period users will not be able to SSH to the login nodes, copy files to/from the cluster via SCP/rsync, run JupyterHub sessions or run myApps sessions.

Job queues will be automatically disabled to prevent the submission of new jobs after 00:00 on 5th July.  Any jobs submitted in the few days before that will remain queued and won’t run until after the maintenance period if the job scheduler (SGE) thinks the jobs require more run time than is available before 00:00 on 5th July.  Don’t forget that you can explicitly specify the amount of run time you want per job on ShARC using the [SGE parameter ‘-l h_rt’](https://docs.hpc.shef.ac.uk/en/latest/hpc/scheduler/index.html#batch-jobs)

If you have any questions about the above or the maintenance work in general please get in touch with us via [research-it@sheffield.ac.uk](mailto:research-it@sheffield.ac.uk?subject=RE:ShARC unavailable on 5th July (maintenance work)).
