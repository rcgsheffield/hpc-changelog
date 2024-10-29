---
title:  "Stanage and Bessemer GPU Driver updates - version 550.127.05 shortly available"
category:  "Update"
tags: Stanage Bessemer maintenance GPU GPUs A100 H100 
---

**Starting on Monday the 4th of November**, the Stanage and Bessemer GPU nodes will begin to apply GPU driver updates to version 550.127.05. This driver version will retain CUDA 12.4 capability.

Over the weeks following the 4th of November, decreases in capacity for GPUs across both clusters are expected as nodes are required to be drained and rebooted. The decreases in capacity are being mitigated by staggered drainage and reboot cycles for each cluster's GPU nodes.

Nodes undergoing maintenance and the reason for the maintenance can be seen using the follwing command:

``sinfo -R --format="%50E %N %.6t``

See the following link for further formatting options of the ``sinfo`` command: [https://slurm.schedmd.com/sinfo.html#OPT_format](https://slurm.schedmd.com/sinfo.html#OPT_format)