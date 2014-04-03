---
layout: post
title: Tutorial -- Adding Content to O'Botics
description: "This post is a first attempt on explaining how to add content to this website, O'Botics"
modified: 2014-04-02
category: news
author: Rowland O'Flaherty
avatar: rowland_oflaherty/rowland_oflaherty.jpg
---

The goal of this website is to be collaborative.
For that to happen people besides myself need to be able to contribute to the site content.
The goal of this tutorial is to explain how one would contribute to the site.

**I make no claim that the current setup, organization, methodology, etc. of this site is the best right now.
So, if you have any ideas on how to make it better in any way, don't hesitate to comment.**

# Table Of Contents
0. [Background](#background)
0. [Getting The Repositories](#getting-the-repositories)
0. [Install Jekyll](#install-jekyll)

# Background

Before I can explain the steps to make contributions to the site let me first describe how the site is hosted and configured.
The site is hosted as a [GitHub Page](https://pages.github.com/) using [Jekyll](http://jekyllrb.com/) to build the static web pages.

What does this mean?

GitHub is a web-based hosting services for [Git](http://git-scm.com/) revision control systems and is where the Git repositories for source files for this site are stored.

The source files and the actual static web pages files are in the following repository:

0. https://github.com/o-botics/website
0. https://github.com/o-botics/o-botics.github.io

Some may wonder why two different repositories are being used?

The source files could be stored directly in the *.github.io repository and GitHub would build the Jekyll files and deploy the resulting static pages.
The problem is that GitHub will not build custom Jekyll plugins (see this [page](http://jekyllrb.com/docs/plugins/)), which O'Botics uses.
Thus, the use of the two separate repositories.
The site can be generated locally and pushed directly to the *.github.io repository.

Jekyll is used to create the static pages from HTML and [Markdown](http://en.wikipedia.org/wiki/Markdown) files.
This allows to easily create new pages while maintain similar formatting and style.
For example, to create this tutorial I just have to:

1. create a new markdown text file (*.md)
2. name it appropriately (YYYY-MM-DD-title.md)
3. add a [YAML](http://en.wikipedia.org/wiki/YAML) header (contains the meta data about the page)
4. add the markdown text content, and put it in the post directory.

I did not have to worry about any other HTML/CSS to give it the look that matches the rest of the website.
It is a similar notion to LaTeX where the content is abstracted away from the formatting.

Ok enough chitchat... how does someone else do this?

# Getting The Repositories

First, the GitHub Help page on forking is very useful, [Fork A Repo](https://help.github.com/articles/fork-a-repo).

0. First create a GitHub account if you do not already have one here on the [GitHub Home Page](https://github.com/).
0. Fork both the repositories (Hit the "Fork" button in the upper left of the screen):
  * [o-botics/website repository](https://github.com/o-botics/website).
  * [o-botics/o-botics.github.io repository](https://github.com/o-botics/o-botics.github.io).
0. Clone the _website_ repository. Navigate to your favorite folder and execute the following command:
```
>> git clone https://github.com/USERNAME/website.git
```
  * Make sure to replace _USERNAME_ with your GitHub username.
0. Clone the _o-botics.github.io_ into the __site_ folder of the _website_ folder.
  * Again, replace _USERNAME_ and do not forget _website/_site_ at the end of the command.
```
>> get clone https://github.com/USERNAME/o-botics.github.io.git website/_site
```

# Install Jekyll
0. Jekyll is built on Ruby, so before installing Jekyll Ruby must be installed.
Follow these instructions for installing Ruby, if you do not already have it installed. [Installing Rudy](https://www.ruby-lang.org/en/installation/)

0. Next install Jekyll with the following command:
```
>> gem install jekyll
```
0. Next install Kramdown is what is used to convert the markdown, so install that with the following command:
```
>> gem install kramdown
```

<div id="disqus_thread"></div>
<script type="text/javascript">
    /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
    {% if site.url == "http://o-botics.org" %}
      var disqus_shortname = 'o-botics'; // required: replace example with your forum shortname
    {% endif %}

    /* * * DON'T EDIT BELOW THIS LINE * * */
    (function() {
        var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
        dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
    })();
</script>
<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
<a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>
