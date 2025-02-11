---
title:  "Bessemer HPC system planned (non-disruptive) maintenance: Slurm scheduler upgrade - February 13, 2025 between 11:00 and 13:00"
category: New
tags: Bessemer HPC maintenance Slurm
---

An update is required for the Slurm scheduler  (from 23.02.7 to 24.05.5) on the Bessemer HPC cluster. This maintenance is scheduled for February 13, 2025, between 11:00 to 13:00.

While this is a significant upgrade from 23.02.7 to 24.05.5, we do not anticipate any long-term disruption to users nor any major changes to SLURM behaviour.  However, there will be very brief periods of command unavailability during the upgrade process.

Specifically:

* **sacct** commands and other commands querying the Slurm database:
  * When the SLURM database service is restarting, these commands may get stuck or fail to complete.
  * This part of the upgrade will take approximately 60 seconds.
* **sbatch** job submissions and **sstat** commands and other commands querying the Slurm controllers:
  * When the SLURM controllers are restarting, these commands may get stuck or fail to complete.
  * This part of the upgrade will take approximately 10 seconds.

When this maintenance is complete we will be in contact to confirm this is the case.

This maintenance has been organised under change ID: C2502 072
