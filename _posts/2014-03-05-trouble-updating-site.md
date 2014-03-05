---
layout: post
title: Trouble Updating The Site
description: "Things do not seem to be working when moving from local machine to remote machine."
modified: 2014-03-05
category: news
author: Rowland O'Flaherty
avatar: rowland_oflaherty/rowland_oflaherty.jpg
---

I have spent a nontrivial amount of time trying to get the site up and running. Most of that time was spent making it easy to add new robots and roboticists and then have those additions get automatically displayed on the appropriate pages. This is working on my local machine but does not seem to want to work on GitHub for the world to see. This will take some debugging ;-)

Do not worry the site will be up for all the world to see shortly.

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
