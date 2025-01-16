---
title:  "Stanage HPC cluster TOTP Multifactor authentication has been replaced with DUO Multifactor authentication"
category: New
tags: Stanage maintenance DUO MFA
---

At 8am on 16th January we replaced the Stanage HPC cluster's TOTP based multifactor authentication (MFA) with the University's standard DUO MFA.

When users connect to Stanage they will now be prompted via a push notification to their DUO device to approve access or must enter a one-time code from their University provided hardware token which is associated with their DUO account.

* Users connecting from workers nodes back to the login nodes may see a warning due to the now changed host key fingerprints. Users should check / amend such that their SSH client expects and gets the correct host key fingerprints as per: [https://docs.hpc.shef.ac.uk/en/latest/FAQs.html#login-node-ssh-rsa-ecdsa-ed25519-host-key-fingerprints](https://docs.hpc.shef.ac.uk/en/latest/FAQs.html#login-node-ssh-rsa-ecdsa-ed25519-host-key-fingerprints) (i.e. amend their .ssh/known_hosts file).

* Users making use of Filezilla will now need to follow the same instructions as required for the Bessemer cluster to avoid being prompted by MFA multiple times while transferring files: [https://docs.hpc.shef.ac.uk/en/latest/FAQs.html#problems-connecting-with-filezilla-due-to-mfa](https://docs.hpc.shef.ac.uk/en/latest/FAQs.html#problems-connecting-with-filezilla-due-to-mfa)

If there are any issues please get in touch via [research-it@sheffield.ac.uk](mailto:research-it@sheffield.ac.uk?subject=Stanage DUO MFA change - help request).
