---
layout: blogPost
title:  "Interactive Technology Observation (and a bonus LED sequencer)"
date:   2019-09-25 00:38:00 -0500
tags: ["Physical Computing", "ITP", "Week 3"]
published: true
---

<figure style="margin: 0;">
  <img class="img-row-2" src="/assets/images/blog/2019-09-25-technology-observation/1.jpg" alt="Crosswalk button at Bushwick Ave. and Kosciuszko street."/>
  <figcaption>
    Crosswalk button at Bushwick Ave. and Kosciuszko street.
  </figcaption>
</figure>
A piece of public technology I get to observe and interact with daily is the crosswalk button at the intersection of Bushwick Ave. and Kosciuszko street. While Bushwick is known for being one of the latest additions to the gentrification train, we can rest assured that at least in terms of infrastructure, everything is older than most inhabitants of the neighborhood 🙃.

The crosswalk button in front of my apartment building is no exception—it is probably one of the first iterations of this type of technology, built and placed on location likely before the digital era. The interface features a single circular metal button, slightly larger than the size of a thumb's tip, placed at the bottom of a round metal panel. Due to usage over a long period of time, pressing the button requires a lot of force, as it tends to get stuck in a lifted position.

In terms of functionality, all I can say is that I am confused. I have lived here for a year and used the button multiple times per week. However, I don't know whether it works or not. Every time after pressing the button, the pedestrian traffic light has turned green after a sensible amount of time. That is also true for every instance when I haven't pressed the button. Since the interface itself has no way of providing visual, auditory or tactile feedback, all one can do is hope. 

Observing other people use the button has led to a similar conclusion. The general usage pattern seems to involve 1) noticing that there is a button after waiting at the traffic light for 5-10 seconds, 2) pressing it and looking slightly confused and 3) waiting for the pedestrian signal to turn green. When observing people interact with this interface, it's relatively easy to spot the ones already familiar with it. They know the button is there, however they do not press it unless the pedestrian traffic light stays red for a frustrating amount of time (15 seconds and above.) Around the 15 second mark, pressing the button becomes a way of releasing built-up tension, or sending a signal to divinity. Fortunately, a response always comes back. We just don't know when.

<br/>

In other news, for this week's lab I have been playing with the speaker cone in our PComp kits and built a rudimentary 3-step sequencer using the Arduino as a controller. Each of the 3 LEDs represents one step in the sequence, and lights up for the duration of that step. The potentiometer (knob) associated with each LED controls the frequency of the sound played at the respective step. The 4th potentiometer controls the step duration (the three steps have equal durations.)

<figure>
  <video src="/assets/images/blog/2019-09-25-technology-observation/2.mp4" preload controls loop alt="Arduino based 3-step sequencer."></video>
  <figcaption>
    Arduino based 3-step sequencer.
  </figcaption>
</figure>
