---
layout: robot
title: QuickBot MOOC v1 -- Wiring
modified: 2014-03-13
image:
prev_name: Building
prev_link: building.html
next_name:
next_link:
publish: true
---

The next is to wire up the QuickBot (diagram show here). The basic steps are:

0. Assemble DC power plugs by cutting two M/M jumper wires, stripping the ends, and connecting to the correct poles on the plugs.
0. Add H-Bridge to small breadboard. Take note of the IC orientation using the notch as a reference. The datasheet for the H-Bridge can be found here.
0. Create the seven voltage dividers on the large breadboard using the 10k and 20K ohm resistors. The 10K resistor is attached to GND and OUTPUT signal and 20K resistor is attached to OUTPUT and INPUT signal.
0. Add the DC power plugs to the small breadboard connecting them in series.
0. Add power switch to the small breadboard connecting it in series with the power plugs.
0. Connect motor wires to H-Bridge.
  * Right motor red wire is connected to H-Bridge 1Y (pin 3).
  * Right motor black wire is connected to H-Bridge 2Y (pin 6).
  * Left motor red wire is connected to H-Bridge 3Y (pin 11).
  * Left motor black wire is connected to H-Bridge 4Y (pin 14).
0. Assemble power supply on the small breadboard using the voltage regulator, heat sink, capacitors, and diode. See this schematic for the component connection layout. The datasheet for the voltage regulator can be found here.
0. Connect power wires to H-Bridge. **Caution: Connecting these wires incorrectly could cause the Beaglebone Black to burn out.**
  * Connect voltage regulator INPUT voltage (9V-12V) to H-Bridge Vcc2 (pin 8) [red wire].
  * Connect voltage regulator OUTPUT voltage (5V) to H-Bridge Vcc1 (pin 16) [red wire].
  * Connect voltage regulator GND to battery GND [black wire].
  * Connect H-Bridge GND (pin 5) to battery GND [black wire].
0. Connect motor control wires to H-Bridge. **Caution: Connecting these wires incorrectly could cause the Beaglebone Black to burn out.**
  * Right motor wires connect to H-Bridge 1,2EN (pin 1) [blue wire], 1A (pin 2) [yellow wire], 2A (pin 7) [orange wire].
  * Left motor wires connect to H-Bridge 3,4EN (pin 9) [blue wire], 3A (pin 10) [yellow wire], 4A (pin 15)  [orange wire].
0. Connect BBB power wires to H-Bridge. **Caution: Connecting these wires incorrectly could cause the Beaglebone Black to burn out.**
  * Connect 5V wire to H-Bridge Vcc1 (pin 16) [red wire].
  * Connect GND wire to battery GND [black wire].
0. Connect big breadboard power wires.
  * Connect big breadboard 5V rail to H-Bridge Vcc1 (pin 16) [red wire].
  * Connect big breadboard GND rail to battery GND [black wire].
  * Connect big breadboard GND rails to each other [black wire].
0. Connect encoder board wires to big breadboard.
  * Connect encoder board GND to big breadboard GND rail [black wires].
  * Connect encoder board VCC to big breadboard 5V rail [red wire].
  * Connect encoder board OUT to the input of the middle voltage dividers on the big breadboard [green, yellow wires].
0. Connect IR sensor wires to big breadboard. IR sensor datasheet can be found here.
  * Connect IR sensor GND to big breadboard GND rail [black wires].
  * Connect IR sensor Vcc to big breadboard 5V rail [red wires].
  * Connect IR sensor Vo to the input of the next outer voltage dividers on the big breadboard [yellow wires].
0. Connect ADC wires to output of voltage dividers on the big breadboard.
0. Attach chassis top plate to bottom plate. Easiest if connect JST wire to front IR sensor before attaching plates together. Then connect JST wire to side IR sensors after attaching plates together.
0. Connect wires to BBB. **Caution: Connecting these wires incorrectly could cause the Beaglebone Black to burn out.**
  * Connect 5V power wire to BBB 5V_Raw (pin P9_05) [red wire].
  * Connect GND wire to BBB GND (pin P9_01) [black wire].
  * Connect right motor control wires to BBB GPIO_51 (pin P9_14) [blue wire], GPIO_68 (pin P8_10) [yellow wire], GPIO_44 (pin P8_12) [orange wire].
  * Connect left motor control wires to BBB GPIO_05 (pin P9_16) [blue wire], GPIO_46 (pin P8_16) [yellow wire], GPIO_26 (pin P8_14) [orange wire].
  * Connect left encoder wire to BBB Ain_0 (pin P9_39) [green wire].
  * Connect right encoder wire to BBB Ain_2 (pin P9_37) [yellow wire].
  * Connect left IR sensor to BBB Ain_1 (pin P9_ 40) [orange wire].
  * Connect left front IR sensor to BBB Ain_3 (pin P9_38 ) [blue wire].
  * Connect front IR sensor to BBB Ain_5 (pin P9_36 ) [brown wire].
  * Connect right front IR sensor to BBB Ain_6 (pin P9_35 ) [blue wire].
  * Connect right  IR sensor to BBB Ain_4 (pin P9_33 ) [green wire].
0. Install batteries and connect DC plugs.
If you would like to run your QuickBot from wall power instead of batteries you can use a 9V-12V 1A DC power supply. Connect this power supply into one of the female DC plugs on the robot. You will need to short the other DC plug. An easy way to do attach both wires or poles of a male DC power plug and insert that into the other female connector on the robot. **Caution: You must remove all the batteries before connecting these plugs to run the QuickBot off of wall power.**

![BBB Wiring Schematic](wiring_schematic.png "BBB Wiring Schematic")

**Learn from my mistakes!** The BeagleBone Black is fairly sensitive beast. I have killed too many boards with wiring mistakes and having the BBB powered while moving it around, which allowed objects to come in contact with the underside of the board and thus shorting it out. Anything but 5V to the power pins or 3.3V to the GPIO pins will must likely kill this fancy little microcomputer.

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


