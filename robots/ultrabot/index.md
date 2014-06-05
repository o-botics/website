---
# <!-- Do not edit below -->
layout: robot
# <!-- Do not edit above -->

publish: true
priority: 1

name: Ultrabot
title: Ultrabot
modified: 2014-06-05
image: ultrabot.jpg
prev_name: Robots
prev_link: /robots/
next_name: Parts Lists
next_link: parts_list.html
---

The UltraBot is based on the QuickBot. Like the QuickBot the idea is to have a
fairly cheap, easy to build, differential drive robot. The name UltraBot was
given because of the usage of Ultrasonic sensors.

The UltraBot has a wheel encoder on each wheel to measure wheel rotations and
five ultrasonic (ULTRA) distance sensors (proximity sensor) to measure the distance
of obstacles to the robot. The processing on the QuickBot is preformed by a
[BeagleBone Black (BBB)](http://beagleboard.org/products/beaglebone%20black)
microcomputer. Wifi on board is used to connect the UltraBot to the world,
which allows for onboard development as well as easy interfacing with
simulation and visualization tools. The UltraBot is powered by 8 AA batteries.

Major difference with the Quickbot:

0. Usage of ultrasonic sensors HC-SR04
0. Easier to read out wheel encoders
0. LM2596 insteed of LM7805 (no need for heatsink)
0. Different chassis 

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
