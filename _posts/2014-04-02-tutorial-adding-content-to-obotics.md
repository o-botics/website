---
layout: post
category: news

title: Tutorial -- Adding Content to O'Botics
description: "This post is a first attempt on explaining how to add content to this website, O'Botics"
modified: 2014-04-03
author: Rowland O'Flaherty
avatar: rowland_oflaherty/rowland_oflaherty.jpg
---

The ambition of this website is to be collaborative.
For that to happen people besides myself need to be able to contribute to the site content.
The goal of this tutorial is to explain how one would contribute to the site.

**I make no claim that the current setup, organization, methodology, etc. of this site is currently optimal.
So, if you have any ideas on how to make it better in any way, don't hesitate to comment.**

# Table Of Contents
0. [Background](#background)
0. [Getting The Repositories](#getting-the-repositories)
0. [Installing Jekyll](#installing-jekyll)

# Background

Before I can explain the steps to make contributions to the site let me first describe how the site is hosted and configured.
The site is hosted as a [GitHub Page](https://pages.github.com/) using [Jekyll](http://jekyllrb.com/) to build the static web pages.

What does this mean?

GitHub is a web-based hosting services for [Git](http://git-scm.com/) revision control systems and is where the Git repositories for source files for this site are stored.

The source files and the actual static web pages files are in the following repositories:

0. [https://github.com/o-botics/website](https://github.com/o-botics/website)
0. [https://github.com/o-botics/o-botics.github.io](https://github.com/o-botics/o-botics.github.io)

Some may wonder why two different repositories are being used?

The source files can be stored directly in the *.github.io repository and GitHub can build the Jekyll files and deploy the resulting static pages.
The problem is that GitHub will not build custom Jekyll plugins (see this [page](http://jekyllrb.com/docs/plugins/)), which O'Botics uses.
Thus, the use of the two separate repositories.
The site can be generated locally and pushed directly to the *.github.io repository.

Jekyll is used to create the static pages from HTML and [Markdown](http://en.wikipedia.org/wiki/Markdown) files.
This allows to easily create new pages while maintain similar formatting and style.
For example, to create this tutorial I had to:

1. create a new markdown text file in the post directory (*.md)
2. name it appropriately (YYYY-MM-DD-title.md)
3. add a [YAML](http://en.wikipedia.org/wiki/YAML) header (contains the meta data about the page)
4. add the markdown text content

I did not have to worry about any other HTML/CSS to give it the look that matches the rest of the website.
It is a similar notion to LaTeX where the formatting is abstracted away from the content.

Ok enough chitchat... how does someone else do this?

# Getting The Repositories

First, the GitHub Help page on forking is very useful, [Fork A Repo](https://help.github.com/articles/fork-a-repo).

0. First create a GitHub account if you do not already have one here on the [GitHub Home Page](https://github.com/).
0. Fork both the repositories (Hit the "Fork" button in the upper left of the screen):
  * [o-botics/website repository](https://github.com/o-botics/website).
  * [o-botics/o-botics.github.io repository](https://github.com/o-botics/o-botics.github.io).
0. Clone the _website_ repository. To do this navigate to your favorite folder and execute the following command:
`
>> git clone https://github.com/USERNAME/website.git
`
  * Make sure to replace _USERNAME_ with your GitHub username.
0. Clone the _o-botics.github.io_ repository into the __site_ folder of the _website_ folder.
  * Again, replace _USERNAME_ and do not forget _website/_site_ at the end of the command.
`
>> get clone https://github.com/USERNAME/o-botics.github.io.git website/_site
`

# Installing Jekyll
0. Jekyll is built on Ruby, so before installing Jekyll Ruby must be installed.
If you do not already have Ruby installed follow these instructions for installing Ruby for varies operating systems, [installing Rudy](https://www.ruby-lang.org/en/installation/).

0. Next install Jekyll with the following command:
`
>> gem install jekyll
`
Note: Windows users this site will be helpful, [Running Jekyll On Windows](http://www.madhur.co.in/blog/2011/09/01/runningjekyllwindows.html).
0. This site uses Kramdown to convert the markdown. Install Kramdown with the following command:
`
>> gem install kramdown
`

# Testing Jekyll Site
Ok, you should now have everything you need to start in order to add content to the site.
To test the setup and for development of content, Jekyll comes with the tools to serve of the a local web page.

0. Navigate in to the folder in which you cloned the _website_ repository in to. Something like: `>> cd ~/.../website`
0. Open the `.../website/_config.yml` file with your favorite text editor.
0. Comment out the url line (approx. line 7). Should look like this:
`# url: http://o-botics.org`.
This will set the default URL of the site to `http://localhost:4000`.
0. Build the site with Jekyll. Run the following command in the _website_ folder: `>> jekyll build`
0. Activate the Jekyll web server. Run the following command in the _website_ folder: `>> jekyll serve`
0. Check out the site in your favorite browser by navigating to `http://localhost:4000`.

Every time you change something you have to rebuild the site with the build command.
This can get annoying, so you can run `>> jekyll serve --watch`, which will automatically build the site if any of the files are changed.
Except for if the configuration file, `.../website/_config.yml` is changed.
In that case you must use the build command, `jekyll build`.

# Adding content
To add content to the site you simply create new file of the appropriate type and save it into the appropriate folder, Jekyll takes care of the rest.
Using the current files as examples should be a very useful and a good way to start.

### Posts (or News)
To create a new post, which gets added to the "News" tab of the site follow these steps.

0. Copy the post template,`YYYY-MM-DD-post-title.md`, from the `.../website/_templates` folder to the `.../website/_posts` folder.
0. Rename the file to current date and desired title, making sure of following the correct format. For example, post is named `2014-04-02-tutorial-adding-content-to-obotics.md`.
The date will in the file name will be the creation date of the left side the site.
0. Update meta data of the post.
At the top of the file is some YAML content, which contains some all of the meta data for the post.
Do not change the first two lines but edit the following appropriately (see the other posts for as examples).
The "avatar" picture file is relative to the `.../website/roboticists` folder.
0. Add content below the YAML section of the file.
Do not edit the bottom of the file.
This section is the javascript that is used to display the [Disqus](http://disqus.com/) comments.
0. If you are running `>> jekyll serve --watch`, after every time you save the file you should see the changes appear in your browser (probably have to hit the refresh button in the browser).

### Robots
Adding a new robot is very similar to adding a new post.
The major difference is that there is a deeper file structure organization that employed with the robots.
The robot folder structure is organized as:

~~~
.../website/robots
              |
              -> Robot
                   |
                   -> index.md
                   -> Model
                         |
                         -> index.md
                         -> Version
                              |
                              -> index.md
                              ->other files

~~~


As an example, the QuickBot robot MOOC model v1 version is setup with this structure.
The idea is that as a robot evolves it can build off earlier versions and models.

To add a new robot follow these steps.

0. Create a new robot folder in the `.../website/robots` folder.
Example `>> mkdir robots/new_robot`
0. Copy the robot template, `robot_index.md`, from the `.../website/_templates` folder to your new robot folder and rename to `index.md`.
Example `>> cp _templates/robot_index.md robots/new_robot/index.md`.
0. Edit YAML content at the top this new robot file (Do not change the first two lines of YAML content).
0. Create a new model folder in the robot folder you just created.
Example `>> mkdir robots/new_robot/new_model`
0. Copy the model template, `robot_model_index.md`, from the `.../website/_templates` folder to your new model folder and rename to `index.md`.
Example `>> cp _templates/robot_model_index.md robots/new_robot/new_model`
0. Edit YAML content at the top this new model file.
Again, do not change the first two lines of YAML content.
0. Create a new version folder in the model folder you just created.
Example `>> mkdir robots/new_robot/new_model/new_version`
0. Copy the version template, `robot_model_version_index.md`, from the `.../website/_templates` folder to your new version folder and rename to `index.md`.
0. Edit YAML content at the top this new version file.
Again, do not change the first two lines of YAML content.

### Roboticists


<!-- Do not edit below this line -->

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
