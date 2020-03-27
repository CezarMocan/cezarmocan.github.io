---
layout: blogPost
title:  "[Homemade Hardware] Prototype"
date:   2020-03-13 00:01:00 -0500
tags: ["Homemade Hardware", "ITP"]
published: true
---

In my <a href="">previous post</a> I proposed two possible directions for the final project. One involved an interactive video frame on a 7" screen, and the other one was a virtual road trip using Google Street View imagery on a smaller, 2.8" screen. I chose the second direction due to lack of access to video equipment and delays in shipping electronic components during this period.

I did a good amount of small display research on Adafruit, and ended up deciding to get the <a href="https://www.adafruit.com/product/1947">2.8" TFT with capacitive display shield for Arduino UNO</a>, which includes a MicroSD card slot. However, Adafruit stopped their shipping operations during the COVID-19 crisis, so I went to Tinkersphere and ordered a <a href="https://tinkersphere.com/shields/1782-28-tft-touch-shield-for-arduino-with-resistive-touch-screen.html">similar shield</a>.

The sheild's specifications on the Tinkersphere website mention it is compatible with the Adafruit_TFTLCD library, but I was not able to get it working (even though they use the same ILI9341 display.) I also tried the Adafruit_ILI9341 library without any luck. After doing some online research, I realized the Tinkersphere shield is different from the Adafruit one – they actually built the <a href="https://www.hackster.io/baqwas/mcufriend-2-4-tft-display-e3c815">MCUFRIEND 2.4" TFT Display Shield</a>, which uses different components from Adafruit's version. Fortunately, they have an Arduino library, <a href="https://github.com/prenticedavid/MCUFRIEND_kbv">MCUFRIEND_kbv</a>, got the display showing the test graphics and eventually images from my MicroSD card after some tinkering.

<figure>
  <img class="img-row-2" style="border: none;" src="/assets/images/blog/2020-03-27-homemade-hardware-prototype/1.JPG" alt=""/>
  <figcaption>  
    Google Street View image from the I-93 highway displayed on the TFT screen, from MicroSD card.
  </figcaption>
</figure>

In terms of software and gathering all the Street View images for an entire trip, I built a script using the Google Maps APIs. At a high level, my script takes two GPS coordinates as an input (origin and destination), asks the API for the driving directions from origin to destination, parses the directions and decodes the polyline for each segment of the route, determines the viewing angle between each two consecutive coordinates on the path and then asks the Street View API for an image at each coordinate, looking in the correct direction of the road.

Here you can see results from two queries – one of them a short trip in New York, the other a longer trip in the desert – at different display frame rates (computer rendering, not Arduino.)

<figure>
    <video class="img-row-2" style="border: none;" src="/assets/images/blog/2020-03-27-homemade-hardware-prototype/2-output-12.mp4" muted autoplay loop alt="">
    </video>
    <video class="img-row-2" style="border: none;" src="/assets/images/blog/2020-03-27-homemade-hardware-prototype/2-output-8.mp4" muted autoplay loop alt="">
    </video>

  <figcaption>  
  Left: 12fps; Right: 8fps;
  </figcaption>
</figure>

<figure>
  <video class="img-row-2" style="border: none;" src="/assets/images/blog/2020-03-27-homemade-hardware-prototype/2-output-4.mp4" muted autoplay loop alt="">
  </video>
    <video class="img-row-2" style="border: none;" src="/assets/images/blog/2020-03-27-homemade-hardware-prototype/2-output-2.mp4" muted autoplay loop alt="">
    </video>
  <figcaption>  
  Left: 4fps; Right: 2fps;
  </figcaption>
</figure>

<figure>
    <video class="img-row-2" style="border: none;" src="/assets/images/blog/2020-03-27-homemade-hardware-prototype/3-output-12.mp4" muted autoplay loop alt="">
    </video>
    <video class="img-row-2" style="border: none;" src="/assets/images/blog/2020-03-27-homemade-hardware-prototype/3-output-8.mp4" muted autoplay loop alt="">
    </video>

  <figcaption>  
  Left: 12fps; Right: 8fps;
  </figcaption>
</figure>

<figure>
  <video class="img-row-2" style="border: none;" src="/assets/images/blog/2020-03-27-homemade-hardware-prototype/3-output-6.mp4" muted autoplay loop alt="">
  </video>
    <video class="img-row-2" style="border: none;" src="/assets/images/blog/2020-03-27-homemade-hardware-prototype/3-output-2.mp4" muted autoplay loop alt="">
    </video>
  <figcaption>  
  Left: 6fps; Right: 2fps;
  </figcaption>
</figure>

An interesting artifact I hadn't thought of before is the fact that the Street View car only travels in one direction for some road segments, so some of the footage will be backwards (the rear-view of the car, played in reverse.) The road motion is the same, but you can notice it in the cars passing by.

I played the frames on Arduino as well. However, the display refresh rate is currently very slow: an image takes about 2.5 seconds to be loaded from the SD card and displayed on screen. 

<figure>
  <video class="img-row-2" style="border: none;" src="/assets/images/blog/2020-03-27-homemade-hardware-prototype/4.MOV" muted autoplay loop alt="">
  </video>
</figure>

There's something I really like about the very slow quality of the trip, but at the same time I would like to have more control over the frame rate, or the visual aspect of updating the screen. I'm currently using buffering, with a buffer size of ~80 pixels, which is about the maximum that will fit in Arduino's 2kb memory. If I managed to get somewhere at 4-8 FPS that'd be great. But that means an image needs to be able to render in ~100-200ms, which is 20 times faster than my current time. Some ideas for optimizations include: 

– reducing the bit depth of my BMP files from 24 to 16 or 8. This would reduce the file sizes, therefore theoretically also reducing the read time of reading each frame from the MicroSD card.

– lower image resolutions (currently 360x240), displayed on a portion of the screen. Same considerations as above, plus faster render times. This could work, given that I want to add text elements to the screen as well (compass direction, maybe city/town or coordinates.) However, anything less than 75% of the screen size would be too small.

– replace the Arduino UNO with a board that has more SRAM. If I managed to fit one or two frames inside of the RAM, rendering could be significantly faster. However, I would need hundreds of kilobytes of SRAM per frame. Teensy boards have 64k, which would still allow me to have a more sizeable buffer.

Another limitation for my initial idea is the API limit for Google Street View. Using the free Google Cloud Credits I've accumulated, I could make about 100,000 requests (1 image / request.) This will not be enough for the original NY – LA trip I had planned, but I can shorten my trip.
<br/><br/><br/><br/>