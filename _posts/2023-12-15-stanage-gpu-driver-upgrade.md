---
title:  "Stanage maintenance outage and upgrades"
category: New
tags: Stanage GPU maintenance outage
---

A period of offline maintenance for the Stanage cluster will take place from 09:00 on 15th December to 17:00 on 19th December.

What you need to know:

All Stanage login nodes and worker nodes will be unavailable over that period so you won't be able to run jobs or transfer data during that period.

Leading up to the maintenance period jobs will only start if the amount of runtime they've requested is less than the duration until the start of the maintenance period.  e.g. if the maintenance period is to start in 48 hours time then batch jobs that request 47 hours of runtime can fit within that window and potentially be executed, depending on how busy job queues are, but jobs that request 49 hours can only be executed after the maintenance period.  The same logic applies with interactive sessions too: if you can't start an interactive session then check that you're requesting an appropriate amount of run time (e.g. 'srun --time=02:30:00 –pty bash' to start an interactive session with 2.5 hours of runtime).

You shouldn't notice any changes in system behaviour following the maintenance period, although a GPU version update to driver version 525.147.05 (supporting CUDA 12.0) will take place.

The maintenance work should not impact data stored in home directories and /mnt/parscratch (Lustre filesystem) but please remember that neither of these areas are automatically backed up.
