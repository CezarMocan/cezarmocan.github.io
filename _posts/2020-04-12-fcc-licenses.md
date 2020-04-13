---
layout: blogPost
title:  "[Critical Communications] FCC License Geo-Research"
date:   2020-04-12 00:01:00 -0500
tags: ["Critical Communications", "ITP"]
published: true
---

For the second Critical Communications assignment, I used [Radio Reference](https://www.radioreference.com) in order to search for FCC radio licenses in a few different areas and industries. Here are some of my findings.
<figure>
  <img class="" style="border: none;" src="/assets/media/blog/radio-screenshot.png" alt=""/>
  <figcaption>  
  </figcaption>
</figure>

**Search #1: My neighborhood (zipcode 11221)**

I did a 1 mile radius search around my home, using the [lat/lon FCC Callsign search tool](https://www.radioreference.com/apps/db/?action=fccProx&lat=40.6947392&lon=-73.9270738&r=1) that Radio Reference offers. I got about 150 results. While many of them belong to the city (NYPD, FDNY or simply City of New York communications,) there were lots of private license holders as well. 

The largest category of private license holders is taxi / car service companies (e.g. [1](https://www.radioreference.com/apps/db/?fccCallsign=WPAX216), [2](https://www.radioreference.com/apps/db/?fccCallsign=WNIM264), [3](https://www.radioreference.com/apps/db/?fccCallsign=WQCS994), [4](https://www.radioreference.com/apps/db/?fccCallsign=WQVZ377)). They use their licenses for radio communications between cars, the traditional way taxi drivers talk to their dispatches and to each other. However, this result took me by surprise, as I rarely see taxis in the neighborhood. Most of these FCC licenses are still active, but the companies are either very small (1-2 person,) or have been put out of business by ride sharing apps over the past few years.

I also found lots of licenses for NEXTEL OF NEW YORK. I had never heard of them, but in the meanwhile I learned they are an older telco provider, which is now (part of) Sprint. (?)

Another significant category of license holders is schools (mostly charter schools). I don't fully understand how they use radio communications, but it might have to do with synchronized clocks (see notes of [Achievement First Bushwick Charter School](https://www.radioreference.com/apps/db/?fccCallsign=WQFN837).) Which leads me to the next discovery – [American Time](https://www.american-time.com/). I had never heard of this company before – they offer synchronized time services to businesses. It's unclear to me how this still exists when we have such widespread internet access, but I'll let them be. One of their offerings is a [radio controlled clock](https://www.american-time.com/products-by-family/wall-clocks/battery-wall-clocks/radio-controlled-atomic-molded-case-clocks-fully-loaded), which, according to the website, recives a signal over radio from an atomic clock in Colorado a few times a day in order to keep time precise. American Time holds licenses for a few thousands antennas (over 8,000 entries on their [Radio Reference page](https://www.radioreference.com/apps/db/?frn=0015495773&os=17000&s=ent),) probably all used to keep their clocks all around America in sync. 

**Search #2: Menlo Park, Palo Alto, large tech companies**

I was curious what the FCC radio license landscape is like in Silicon Valley, and how it's different from the part of New York I live in. The radius searches in the area returned mostly 1) construction companies, 2) bio-tech companies and 3) tech companies. I started searching for company specific licenses for a few larger tech companies: Google, Facebook, Square, Palantir, Twitter, Airbnb, Pinterest, Tesla. Most of these had licenses for antennas located at their headquarters, in San Francisco / SV, or New York. Tesla also had some for their factories. Palantir didn't have any (lol.) Google and Facebook had more than the other companies. I went deeper down the Facebook route, and realized that they have licenses for towers at the locations of their data centers as well. Which makes sense. However, the dystopian discovery that came out of this was that they got to name the streets where the data centers were built... [5000 Like Way, Fort Worth TX](https://www.google.com/maps/place/Facebook+Data+Center/@32.9862414,-97.2594572,1279m/data=!3m1!1e3!4m13!1m7!3m6!1s0x864dd09915953d8d:0x97b577da8c062453!2s4500+Like+Way,+Fort+Worth,+TX+76177!3b1!8m2!3d32.984464!4d-97.2584655!3m4!1s0x864dd1dcb16993b1:0x1e2d97b188699b0!8m2!3d32.9867349!4d-97.2526476) and [100 Share Way NW, Altoona IA](https://www.google.com/maps/place/Facebook+Data+Center/@41.6620952,-93.513984,1412m/data=!3m1!1e3!4m13!1m7!3m6!1s0x87ee917946eb868f:0x226cfeb7aacb03c!2s100+Share+Way+NW,+Altoona,+IA+50009!3b1!8m2!3d41.6632643!4d-93.5100769!3m4!1s0x87ee9176e99c041d:0x6035fff71a76b700!8m2!3d41.667416!4d-93.5076723). 

**Search #3: Area 51 (Homey Airport)**

No results :).

**Bonus**

Using the [online SDR located at the Twente University](http://websdr.ewi.utwente.nl:8901/), I caught a very clear recording of data being sent over the 26148.2kHz frequency, and an adjacent one (the one depicted in the screenshot). It looked like the two frequencies could be in dialogue, their messages never overlapped and alternated pretty consistently. Any ideas what it might be?

<audio controls>
    <source src="/assets/media/blog/radio_holland_26148.2kHz.wav">
</audio>

<figure>
  <img class="" style="border: none;" src="/assets/media/blog/radio-screenshot-2.png" alt=""/>
  <figcaption>  
  </figcaption>
</figure>

<figure>
  <img class="" style="border: none;" src="/assets/media/blog/radio-screenshot.png" alt=""/>
  <figcaption>  
  </figcaption>
</figure>

<br/>

<br/>

<br/>