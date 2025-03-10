
# Changelog

## What is this site?

This is a website to organise / record a changelog of software / configuration of the TUoS HPC clusters.

## How to modify the generated website

The website uses the Jekyll website building engine and follows the general Jekyll structure.

* To add links please look at the ``_data/externalWebsiteLinks.yml``
* To add categories please look at the ``_data/categories.yml`` and make matching edits in the _``sass/_custom-variables.scss`` file, look for ``$tag-colors:``.
* Adjustments to the theme / page can be made by editing both ``_layouts/``,  ``__sass/_custom-styles.scss `` and ``_sass/_custom-variables.scss`` files.
* Adjustments to the head, header and footer etc... can be made in the ``_includes`` subdirectory.
* Please add assets such as CSS, JS or images in the appropriate subdirectory of ``assets``.
* Other configuration files control aspects of the Jekyll generation of pages e.g. ``Gemfile``, ``_config.yml`` and files in the ``_sass`` folder.

-----

## How to build the website locally

* Install Jekyll - https://jekyllrb.com/docs/installation/

On Ubuntu this looks like:

```
sudo apt-get install ruby-full build-essential zlib1g-dev
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
gem install jekyll bundler
```

* Install the dependencies / theme:

```
bundle install
```

* Have Jekyll build the site:

```
bundle exec jekyll build
```

* Have Jekyll autobuild as you make changes:

```
bundle exec jekyll serve --incremental
```

* Open the site in your favorite browser 

http://127.0.0.1:4000

-----

## Publishing new Posts
1. Create new file under `_posts` folder
2. File Name should be like yyyy-mm-dd-feature-name.md (e.g. 2022-02-01-docs-update-file-transfer.md)
3. Add the post content like this (Markdown format):
```
---
title:  "Major HPC documentation update: New file transfer guidance added!"
category: New
tags: documentation update ShARC Bessemer
---

A major update to the HPC documentation has been made covering the process of 
making file transfers to or from the HPC clusters.

The new guidance can now be found at:

[https://docs.hpc.shef.ac.uk/en/latest/hpc/transferring-files.html](https://docs.hpc.shef.ac.uk/en/latest/hpc/transferring-files.html)
```
4. Check your tags match the existing ones in use (case sensitive) and ensure you run the build process twice to generate any new tag's ``.md`` and ``.xml`` precursor files.
5. Commit your new file/s to your branch or fork then make a PR.
6. Check the tests pass and then merge to automatically update and redeploy the site.

-----

## Adding new tags

If you add a new tag the Ruby scripts in the _plugins directory, tag_cloud.rb (all tags page) and tag_generator.rb (generates individual tag feeds/pages), will automatically generate the precursor files (an ``.md`` and a ``.xml`` file) required to generate a tag page and a tag XML feed. **HOWEVER** you must run the build command at least twice, then make sure you commit the automatically generated files.

If you fail to do this, due to an unresolved bug with the Jekyll hooks that do this auto generation, the CI/CD process 
on Github will not generate these for you (it runs the build process once) and will generate a website with links to pages that do not exist.

-----

## Adding admonitions to posts

See the usage section as per: https://www.adamsdesk.com/posts/admonitions-jekyll/

See also: [_posts/2024-10-29-Stanage-central-software-storage-volume-nonn-disruptive-maintenance.md](_posts/2024-10-29-Stanage-central-software-storage-volume-nonn-disruptive-maintenance.md)

Minor tweaks of the SCSS were made.

Cheers Adam!

-----

## Acknowledgements

This website was forked from the [changelogsite project.](https://github.com/changelogsite/changelog/)

-----

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.