
# Changelog

##  What is this site?

This is a website to organise / record a changelog of software / configuration of the TUoS HPC clusters.

## How to modify the generated website

The website uses the Jekyll website building engine and follows the general Jekyll structure.

* To add links please look at the ``_data/externalWebsiteLinks.yml``
* To add categories please look at the ``_data/categories.yml`` and make matching edits in the _``sass/_custom-variables.scss`` file, look for ``$tag-colors:``.
* Adjustments to the theme / page can be made by editing both ``_layouts/``,  ``__sass/_custom-styles.scss `` and ``_sass/_custom-variables.scss`` files.
* Adjustments to the head, header and footer etc... can be made in the ``_includes`` subdirectory.
* Please add assets such as CSS, JS or images in the appropriate subdirectory of ``assets``.
* Other configuration files control aspects of the Jekyll generation of pages e.g. ``Gemfile`` ``_config.yml`` and files in the ``_sass`` folder.

## How to build the website

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

* Have Jekyll autobuild as you make changes:

```
bundle exec jekyll serve --incremental
```

* Open the site in your favorite browser 

http://127.0.0.1:4000


## Publish new Posts
1. Create new file under `_posts` folder
2. File Name should be like yyyy-mm-dd-feature-name.md (See [This](https://github.com/changelogsite/changelog/blob/master/_posts/2019-04-30-welcome-to-changelog.md) file for reference )
3. Add the post content like this:
```
---
title:  "Welcome to Changelog"
category: New
---
We have just launched this website. You will see our product's future updates here.
1. Subscribe our email.
2. Watch on Github (If you are developer)
3. Subscribe our [RSS feed](/feed.xml).
```
4. Commit new file.
5. Do a PR to master and merge to automatically update the site.

## Acknowledgements

This website was forked from the [changelogsite project.](https://github.com/changelogsite/changelog/)


## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.