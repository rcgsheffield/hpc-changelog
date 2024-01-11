---
title:  "Temporary loss of Stanage and Bessemer HPC connectivity on January 17th 2024"
category: New
tags: Stanage Bessemer maintenance
---

Due to scheduled network upgrades on January 17th, there will be some short losses of network connectivity to our HPC systems with disruption to external access (between 10:00 - 12:00) and some supporting services (between 10:00 and 15:30).

Note: As this will be brief network disruption, users may experience little to no outages or disruption when connecting via SSH / transferring files however, you may experience:

* Hung/terminated SSH sessions to login nodes.
* Hung/terminated SCP/SFTP/rsync file transfers to/from login nodes (although rsync may be able to resume from where it left off if then (re)invoked in the right way.)
* Hung access to / file transfers to/from '/shared' storage areas on Stanage login nodes and Bessemer login and worker nodes (depending on which /shared area you're accessing).  These connections should automatically resume without the need for any intervention.

If your jobs require access to Sheffield remote shared storage or require network access to start up correctly, you should hold your jobs during the maintenance period, then release them after the maintenance with the following commands for specific job IDs:
 
    scontrol hold <job ID>
    scontrol release <job ID>
   
If you want to hold and release all of your pending jobs, you can do so with the commands:

    squeue --me --noheader -t PD --format="%A" | xargs -n 1 -I {} scontrol hold {}
    squeue --me --noheader -t PD --format="%A" | xargs -n 1 -I {} scontrol release {}
