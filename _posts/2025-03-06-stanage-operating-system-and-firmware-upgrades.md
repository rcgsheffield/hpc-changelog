---
title:  "Stanage cluster operating system and firmware upgrades"
category: New
tags: Stanage maintenance GPUs GPU A100 H100
---

**Starting today, Thursday the 6th of March**, the Stanage HPC nodes (including GPU nodes) will start to drain of jobs in order to reboot and apply operating system, kernel and omnipath network card updates.

Over the weeks following, decreases in capacity across the cluster is expected. The decreases in capacity are being mitigated by staggered drainage and reboot cycles for all nodes.

Nodes undergoing maintenance and the reason for the maintenance can be seen using the following command:

``sinfo -R --format="%50E %N %.6t"``

See the following link for further formatting options of the ``sinfo`` command: [https://slurm.schedmd.com/sinfo.html#OPT_format](https://slurm.schedmd.com/sinfo.html#OPT_format)
