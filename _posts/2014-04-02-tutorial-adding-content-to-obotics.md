---
# <!-- Do not edit below -->
layout: post
category: news
# <!-- Do not edit above -->

title: Tutorial -- Adding Content to O'Botics
description: "This post is a first attempt on explaining how to add content to this website, O'Botics"
modified: 2014-04-17
author: Rowland O'Flaherty
avatar: oflaherty_rowland/professional.jpg
---

The ambition of this website is to be collaborative.
For that to happen people besides myself need to be able to contribute to the content of the site.
This tutorial explains how to contribute content to this site.

**Any ideas or comments to improve the setup and organization of this site are welcome.**

**Also, if you want a more detailed explanation of any of the topics below, do not hesitate to comment.**

# Table Of Contents
0. [Background](#background)
0. [Getting The Repositories](#getting-the-repositories)
0. [Installing Jekyll](#installing-jekyll)
0. [Testing Jekyll Site](#testing-jekyll-site)
0. [Adding Content](#adding-content)
    * [Adding News](#adding-news)
    * [Adding Robots](#adding-robots)
    * [Adding Roboticists](#adding-roboticists)
0. [Publishing New Content](#publishing-new-content)


# Background

Let me first describe how the site is hosted and configured.
The site is hosted as a [GitHub Page](https://pages.github.com/) using [Jekyll](http://jekyllrb.com/) to build the static web pages.

What does this mean?

GitHub is a web-based hosting service for [Git](http://git-scm.com/) (a revision control system) repositories and is where the source files for this site are stored.

The source files and the actual static web pages files are in the following repositories:

0. [https://github.com/o-botics/website](https://github.com/o-botics/website)
0. [https://github.com/o-botics/o-botics.github.io](https://github.com/o-botics/o-botics.github.io)

Some may wonder why two different repositories are being used?

The source files can be stored directly in the *.github.io repository and GitHub can build the Jekyll files and deploy the resulting static pages.
The problem is that [GitHub will not build custom Jekyll plugins](http://jekyllrb.com/docs/plugins/), which O'Botics uses.
Thus, the use of the two separate repositories are necessary.
The site is generated locally and pushed directly to the *.github.io repository.

Jekyll is used to create the static pages from HTML and [Markdown](http://en.wikipedia.org/wiki/Markdown) files.
This allows to easily create new pages while maintain the similar formatting and style from the rest of the website.
For example, to create this tutorial page I had to:

1. Create a new markdown text file (`*.md`) in the post directory of the website folder (`.../website/_posts`)
2. Name it appropriately (`YYYY-MM-DD-title.md`)
3. Add a [YAML](http://en.wikipedia.org/wiki/YAML) header (contains the metadata about the page)
4. Add the content page using markdown syntax
5. Build the page with Jekyll (`>> jekyll build`)
6. Publish the page to GitHub (`>> git commit -a && git push`)

I did not have to worry about any other HTML/CSS to give it the look and feel of the website.
It is similar to LaTeX, where the formatting is abstracted away from the content.

Ok enough chitchat... how does someone else do this?

# Getting The Repositories

0. First [create a GitHub account](https://github.com).
0. Fork the repository (Hit the "Fork" button in the upper left of the screen): [o-botics/website repository](https://github.com/o-botics/website).
  *  The GitHub Help page on "forking" is very useful, [Fork A Repo](https://help.github.com/articles/fork-a-repo).
0. Clone the _website_ repository. To do this navigate to your favorite folder and execute the following command:
`>> git clone https://github.com/USERNAME/website.git`
  * Make sure to replace _USERNAME_ with your GitHub username.

# Installing Jekyll
0. [Install Ruby](https://www.ruby-lang.org/en/installation/).

0. Next install Jekyll with the following command: `>> gem install jekyll`
  *  Windows users this site will be helpful, [Running Jekyll On Windows](http://www.madhur.co.in/blog/2011/09/01/runningjekyllwindows.html).
0. This site uses Kramdown to convert the markdown to HTML. Install Kramdown with the following command: `>> gem install kramdown`

# Testing Jekyll Site
You should now have everything you need to start adding content to the site.
To test the setup and for development, Jekyll comes with a built-in development server that allows you to preview the site locally.

0. Navigate to the folder in which you cloned the _website_ repository into, something like `>> cd ~/.../website`
0. Open the `.../website/_config.yml` file with your favorite text editor.
0. Comment out the URL line (approx. line 7).
  *  Should look like this: `# url: http://o-botics.org`.
  This will set the default URL of the site to `http://localhost:4000`.
0. Build the site with Jekyll. Run the following command in the _website_ folder to do this, `>> jekyll build`
0. Activate the Jekyll web server. Run the following command in the _website_ folder to do this, `>> jekyll serve`
0. Check out the site in your favorite browser by navigating to `http://localhost:4000`.

Every time you change something you have to rebuild the site with the build command.
This can get annoying, so instead you can run `>> jekyll serve --watch` command, which will automatically build the site if any of the files change.
Except for if the configuration file, `.../website/_config.yml`, changes.
In that case you must use the build command, `jekyll build`.

# Adding content
To add content to the site simply create a new file of the appropriate type and save it into the appropriate folder, Jekyll takes care of the rest.
Using the current files as examples is a good way to start.

### Adding News
To create a new post, which gets added to the "News" tab of the site follow these steps.

0. Copy the post template file,`YYYY-MM-DD-post-title.md`, from the `.../website/_templates/` folder to the `.../website/_posts/` folder.
0. Rename the file to current date and desired title, making sure to following the correct format. For example, `2014-02-27-hello-world.md` is a valid name.
The date in the file name will be the creation date on the left side the website page.
0. Update the metadata of the post.
At the top of the file is some YAML content, which contains all of the metadata for the post.
Do not change the first two lines, but edit the following lines appropriately (see the other posts for examples).
  *  The avatar picture file is relative to the `.../website/roboticists/` folder.
0. Add content below the YAML section of the file.
Do not edit the bottom of the file.
This section is the javascript that is used to display the [Disqus](http://disqus.com/) comments.
0. If you are running `>> jekyll serve --watch`, after each time you save the file, you should see the changes appear in your browser after hitting refresh.

### Adding Robots
Adding a new robot is very similar to adding a new post.
The major difference is that there is a deeper folder structure organization that is employed.
The robot folder structure is organized as follows:

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
                              -> other files

~~~

The idea behind this structure is that as a robot evolves it can build off earlier versions and models.
As an example, take a look at the QuickBot robot MOOC model v1 version.

To add a new robot follow these steps.

0. Create a new robot folder in the `.../website/robots/` folder.
  *  For example `>> mkdir robots/new_robot`
0. Copy the robot template, `robot_index.md`, from the `.../website/_templates/` folder to your new robot folder and rename to `index.md`.
  *  For example `>> cp _templates/robot_index.md robots/new_robot/index.md`
0. Edit YAML content at the top this new robot file.
  *  Do not change the first two lines of the YAML content.
0. Create a new model folder in the robot folder that you just created.
  *  For example `>> mkdir robots/new_robot/new_model`
0. Copy the model template, `robot_model_index.md`, from the `.../website/_templates` folder to your new model folder and rename to `index.md`.
  *  For example `>> cp _templates/robot_model_index.md robots/new_robot/new_model`
0. Edit YAML content at the top this new model file.
  *  Do not change the first two lines of the YAML content.
0. Create a new version folder in the model folder that you just created.
  *  For example `>> mkdir robots/new_robot/new_model/new_version`
0. Copy the version template, `robot_model_version_index.md`, from the `.../website/_templates` folder to your new version folder and rename to `index.md`.
0. Edit YAML content at the top this new version file.
  *  Do not change the first two lines of the YAML content.
0. Add the content about the robot to the version file in the content area.
0. Add additional files about the version of the robot by creating new version files and linking to them with the links in the YAML section at the top of the file.
  *  These additional files obviously can not be named `index.md` and must be named something else.

### Adding Roboticists
Adding a new roboticist is very similar to adding a new post.
All the files associated with a roboticist must be placed in an individual folder under the `.../website/roboticists/`.

To add a new roboticists follow these steps.

0. Create a new roboticist folder in the `.../website/roboticists/` folder and name it using your last and first name, like `last_first`.
0. Copy the roboticist template, `roboticist.yaml`, from the `.../website/_templates/` folder to your new roboticist folder and rename to your last_first name (same name as the folder) with the 'yml' extension, like `last_first.yml`.
0. Add an avatar image to this new folder.

# Publishing New Content
Once you have added all your new content and checked that everything is perfect by previewing the site in your local browser then you are ready to publish to the world.

Follow these steps to publish.

0. Uncomment the url line (approx. line 7) in `.../website/_config.yml`.
  *  Should look like this: `url: http://o-botics.org`.
0. Build the site one last time with `>> jekyll build`.
0. Commit your changes to the the website Git repository with `>> git commit -am "Your commit message here."`
0. Push your changes with `>> git push`.
0. Submit a pull request from your GitHub account.
  *  Use the [GitHub Help page on "pull request"](https://help.github.com/articles/using-pull-requests) to learn how to do this.

One of the moderators of the O'Botics will review your pull request and (most likely) accept it. Then it will be available for the entire world to see!

At the time of writing this tutorial I am the only moderator, but if you would like to be a moderator (anybody is welcome) please send me a message.

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
