---
title:  "Stanage shared areas may not appear visible until accessed"
category:  "Update"
tags: Stanage shared
---

As part of a change to how the Stanage cluster mounts shared areas on login nodes, it will now follow our previous HPCs settings.

Subdirectories beneath ``/shared`` are now mounted on demand on the HPC systems: they may not be visible if you simply list the contents of the ``/shared`` directory but will be accessible if you ``cd`` (change directory) into a subdirectory e.g. ``cd /shared/my_group_file_share1``.