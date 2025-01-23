---
title:  "Stanage GPU driver upgrade"
category: New
tags: Stanage maintenance GPUs GPU A100 H100
---

**Starting today, Thursday the 23rd of January**, the Stanage GPU nodes will begin to apply GPU driver updates from version 550.127.05, to driver version 550.144.03. This driver version will retain CUDA 12.4 capability.

Over the weeks following, decreases in capacity for GPUs across the cluster is expected as nodes are required to be drained and rebooted. The decreases in capacity are being mitigated by staggered drainage and reboot cycles for GPU nodes.

Nodes undergoing maintenance and the reason for the maintenance can be seen using the following command:

``sinfo -R --format="%50E %N %.6t"``

See the following link for further formatting options of the ``sinfo`` command: [https://slurm.schedmd.com/sinfo.html#OPT_format](https://slurm.schedmd.com/sinfo.html#OPT_format)
