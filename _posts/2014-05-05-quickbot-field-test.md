---
# <!-- Do not edit below -->
layout: post
category: news
# <!-- Do not edit above -->

title: QuickBot field test
description: "Video of QuickBot field test"
modified: 2014-05-05
author: Mike Kroutikov
---

Video of my QuickBot field test

<iframe width="560" height="315" src="//www.youtube.com/embed/5rOYVlgJui8?rel=0" frameborder="0" allowfullscreen></iframe>

This is a QuickBot MOOC v1 robot, but powered by a LiPo battery (instead of two 4xAA packs).

Software that drives robot can be found in [my github repository](http://github.com/pgmmpk/quickbot_api)
(it is pure Python, no MatLab).

Robot switches between following strategies:

1. "Go Straight" - drives robot forward until it "sees" an obstacle. Then supervisor passes control to
2. "Avoid Collision" - reverses if necessary to establish some clearance. When done, yields to
3. "Find New Direction" - rotates until it sees a "clear" direction, then yields to "Go Straight"

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
