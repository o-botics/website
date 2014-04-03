---
<!-- Do not edit below -->
layout: post
category: news
<!-- Do not edit above -->

title: O'Botics Up and Running
description: "After working out some issues, finally got the website up... still a lot of work to do."
modified: 2014-03-07
author: Rowland O'Flaherty
avatar: rowland_oflaherty/rowland_oflaherty.jpg
---

Ok, after a lot of Googling and tweaking I finally got the website up and running with comments and everything else working.
A lot of material still needs to be added but the foundation of the site is in place.

Soon I will make a post on how somebody other than myself can add content to the site.
The main idea will be to fork the website repos (there are now two repos because GitHub does not compile Jekyll plugins) add your content and then do a pull request.
The content will need to be added in one of two places.
If you want to add a new robot that will go in the robots folder, if you want to add a new roboticist that will go in the roboticists folder.
All material consist of just HTML, MD, or YAML files.
Full tutorial to come.

Also, ideally I would like to move the site from GitHub hosting to something else, so an actual forum can be connected with the site, something like [Discourse](http://www.discourse.org/).
This requires having dynamic pages, which can not be done with GitHub.

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
