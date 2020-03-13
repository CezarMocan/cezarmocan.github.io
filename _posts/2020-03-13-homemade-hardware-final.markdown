---
layout: blogPost
title:  "[Homemade Hardware] Final Project Proposal"
date:   2020-03-13 00:01:00 -0500
tags: ["Homemade Hardware", "ITP"]
published: true
---

**Video link to be updated here.** In the meanwhile, enjoy my written description.

During my first semester at ITP, I worked on two installations that involved interactive video. <a href="/untitled" target="__blank">The first one</a> was an overhead video feed of a person inside of a warehouse, shown on a computer monitor. The viewer had access to a computer mouse, and moving the mouse would make the person on screen walk towards the new position of the mouse.

<figure>
  <img class="img-row-2" style="border: none;" src="/assets/images/blog/2020-03-13-homemade-hardware-final/1.JPG" alt=""/>
  <img class="img-row-2" style="border: none;" src="/assets/images/blog/2020-03-13-homemade-hardware-final/2.JPG" alt=""/>
  <figcaption>  
  The viewer is able to control my position in the warehouse using the mouse. This is achieved by using ~1500 short video clips of walking between different positions in the space.
  </figcaption>
</figure>

<a href="/thejoys" target="__blank">The second one</a> was slightly more elaborate, it involved 4 screens placed around the viewer, and a person stuck inside of the screen space. The person inside of the monitors would walk around the 4 screens (they are only present on one screen at a time,) making the viewer turn around in order to follow her. The viewer had access to a rotary phone and could call the on-screen person at any of the 4 screens.

<figure>
  <img class="img-row-2" style="border: none;" src="/assets/images/blog/2020-03-13-homemade-hardware-final/3.JPG" alt=""/>
  <img class="img-row-2" style="border: none;" src="/assets/images/blog/2020-03-13-homemade-hardware-final/4.JPG" alt=""/>
  <figcaption>  
  </figcaption>
</figure>

For the Homemade Hardware final project, I would love to continue working with video, potentially interactive depending on the technical constraints. 

A first direction I'm considering is inspired by <a href="https://shop.infiniteobjects.com/collections/featured/products/exonemo-green">Exonemo's collaboration with Infinite Objects</a>. I would build a video frame, on a 5" or 7" screen, in portrait mode, playing a short video of myself standing still, which loops perfectly. Whever the screen is touched (or a button is pressed,) I leave the frame for a few seconds, and then come back. Or, whenever the user touches the screen, a hand enters the frame and touches my face. Whenever the user lifts their finger, the hand leaves. There are a few content options I'm considering, but they all involve a very simple interaction (screen touch or button press) which triggers the video loop to move into a second state, and eventually get back to its original state. I think this idea would be effective if I can work with relatively high resolution / high FPS (30 or 60) video. Based on my research so far, this might be beyond the scope of the hardware we've been using in this class. However, I did find a few breakout boards on Adafruit that might do what I need, it'll be a matter of figuring out how easy they are to rebuild.

<figure>
  <video style="border: none;" src="https://cdn.shopify.com/s/files/1/0021/7789/2441/files/exonemo-green-mobile.webm?2203" muted autoplay loop alt=""/>
  <figcaption>  
  InfiniteObjects x Exonemo
  </figcaption>
</figure>

If that proves to be too difficult, I would be interested in working with different content on a small screen (<a href="https://www.adafruit.com/product/2770">2.8" TFT Display</a> or variations, but definitely smaller than 3.5".) I've always wanted to do a cross-country trip, but I don't drive. This direction would involve using Google Street View and getting road images from New York to Los Angeles and back—at equal intervals, with as many images as I can fit on a MicroSD card. The final product would be a tiny device (the size of the screen, with some depth for the PCB) which slowly travels back and forth between New York and LA, by playing the road images in a sequence. I imagine being able to fit at least a few tens of thousands of images (at 320x240 resolution, probably even more.) The main constraints I've run into during my research for video with Arduino are low frame rates. However, for this direction, in the spirit of slowness, I would have a frame rate of *at most* 1 FPS. If the screen updates its image line of pixels by line of pixels, that's even better.

Depending on the timeline, I could add a simple feature of displaying the lat,lon coordinates or the travel direction (N, S, E, W, like rear-view mirrors in some cars do) whenever the user taps the screen. These would all be saved on the microSD card. It would also be great to produce 3-4 of these objects, with different cities, but I realize that might not be realistic.

<figure>
  <img style="border: none;" src="/assets/images/blog/2020-03-13-homemade-hardware-final/5.png" alt=""/>
  <figcaption>  
  Google Street View image capture from New Jersey.
  </figcaption>
</figure>
