---
layout: blogPost
title:  "Sensors and Soldering"
date:   2019-10-02 00:38:00 -0500
tags: ["Physical Computing", "ITP", "Week 4"]
published: true
---

This week's physical computing labs involved working with analog input and output for the Arduino, as well as soldering. Since we're having a review week, I chose to focus on two things: 

1) Improving the <a class="underlined" href="/2019/09/25/technology-observation.html">LED sequencer I built for the previous lab;<a>

and

2) Getting outside of the breadboard and working with resin, a material I've wanted to experiment with for some time.

<br/>

**Sequencer 2.0**

To recap, last week the sequencer used 3 steps—3 LEDs, each blinking when the current step is playing a note, and 3 potentiometers, used to adjust the frequency of the note played at each step. It also included a 4th potentiometer which controlled the perceived "speed" of the sequencer—how much time is spent playing the note at each step. This week's improvements included: 

* soldering the speaker connecting wires, which were previously attached to the speaker using alligator clips;

* adding a 4th step to the sequencer, in order to play slightly more complex sequences; ideally, we would have 8 or 16 steps, but real estate is limited on the breadboard;

* adding another control input to the sequencer in the form of a photoresistor; this allows for controlling the overall pitch of the played sequence by covering or uncovering the sensor with one's hand; 

* improving the software such that the Arduino `loop` cycle is not dependent on the speed of the sequencer anymore; this means that frequency of a step's sound can now be adjusted while the step is playing;

* experimenting with different sensitivity levels for the photoresistor reading (I ended up settling on dividing the output into 8 different buckets, since the sensor readings were quite noisy.)


Here is the photoresistor in action:

<figure>
  <video src="/assets/images/blog/2019-10-02-sensors-and-soldering/12.mp4" preload controls loop alt="Arduino based 4-step sequencer, with theremin-like hand input."></video>
  <figcaption>
    Arduino based 4-step sequencer, with theremin-like hand input.
  </figcaption>
</figure>


While I was initially going for the theremin *continous bending* sound quality, I realized that was going to be difficult for two main reasons: the noise in the photoresistor reading (even when averaged over time) and the `loop` function timing trade-offs between `tone` working properly and proper responsivity. So I went a different direction and started working with only discrete quantities. As mentioned before, I divided the photoresistor output into only roughly 8 different buckets. In terms of the frequencies that get played by the sequencer, they all full octaves apart and have the C pitch (the step frequencies get rounded to multiples of 65.) This produces an effect similar to a <a href="https://www.google.com/search?client=firefox-b-1-d&q=quantizer" target="__blank" class="underlined">quantizer</a>.

Here are two more videos of playing the sequencer. The noise in the photoresistor adds an improvised quality to the sound, which I find enjoyable.

<figure>
  <video src="/assets/images/blog/2019-10-02-sensors-and-soldering/10.mp4" preload controls loop alt="Arduino sequencer improvisation #1."></video>
  <figcaption>
    Arduino sequencer improvisation #1.
  </figcaption>
</figure>


<figure>
  <video src="/assets/images/blog/2019-10-02-sensors-and-soldering/11.mp4" preload controls loop alt="Arduino sequencer improvisation #2."></video>
  <figcaption>
    Arduino sequencer improvisation #2.
  </figcaption>
</figure>



**LED Resin Cube**


* fabricating the resin cube
    * buying resin supplies from Blick
    * creating the cube mold
    * pouring first layer of resin and adding LEDs inside (3 of them soldered together)
    * pouring second layer of resin
    * getting the cube out and sanding