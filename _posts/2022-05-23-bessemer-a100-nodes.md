---
title:  "64 NVIDIA A100 GPUs are now temporarily available on Bessemer for general use"
category: New
tags: Bessemer HPC GPUs A100 NVIDIA
---

Those of you that have a need for GPUs for your work may be aware that the Bessemer cluster only has one public GPU node (with 4x NVIDIA V100 GPUs) and ShARC only has two public GPU nodes (with K80 GPUs, which are now not particularly modern). There are a number of private GPUs node in Bessemer and ShARC and the private GPU nodes in Bessemer can be used by all users if they're willing to tolerate [jobs being abruptly terminated](https://docs.hpc.shef.ac.uk/en/latest/hpc/scheduler/index.html#preemptable-jobs), but this isn't a constraint all researchers can work with and having more GPUs available to the UoS research community would be a good thing.

We're therefore pleased to announce that we're to greatly increase the number of GPUs available in UoS HPC systems by temporarily adding 16 GPU nodes, each with 4x NVIDIA A100 GPUs, to the Bessemer HPC system; and these will be available to all users. Note that these nodes will be relocated into what will be our next big HPC system in a few months' time (there'll be more info on that HPC system in due course).

Peter Heywood and Robert Chisholm in the Research Software Engineering team have done some performance comparisons with the [FLAME GPU 2](https://flamegpu.com/) research software between these A100 nodes and the existing V100 nodes in Bessemer. They found that even for a memory-latency (and memory-bandwidth) -bound problem that the nodes featuring newer-generation A100 GPUs were significantly faster than the V100 nodes under CUDA 11!

Please note:
- These nodes are being provided in Bessemer on a temporary basis.
- They can be used for interactive work and for batch jobs (but please submit batch jobs where possible)
- Much of the software centrally provided on Bessemer is incompatible with these nodes as they have a different CPU 'microarchitecture' to the majority of nodes in Bessemer.
- Some software is centrally-provided specifically for use on these nodes.
- But it's currently quite a limited set and will most likely not be expanded on much until the nodes are relocated into our next big HPC system in a few months' time.
- There are a few things to be aware of if migrating workflows to these nodes, which we've tried to document.

For more information on these nodes including specifications, access information and warnings/gotchas regarding software performance and compatibility please see:

[Using GPUs on Bessemer — Sheffield HPC Documentation](https://docs.hpc.shef.ac.uk/en/latest/bessemer/GPUComputingBessemer.html)

If you have any comments/feedback regarding these nodes or the documentation, or have any issues using them then please get in touch via [research-it@sheffield.ac.uk](mailto:research-it@sheffield.ac.uk?subject=A100 usage help request.").

Besides this, LGTM!
