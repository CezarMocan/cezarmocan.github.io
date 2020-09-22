---
layout: blogPost
title:  "[Performative Avatars] Skeletal Mesh"
date:   2020-09-22 00:01:00 -0500
tags: ["Performative Avatars", "ITP"]
published: true
---
<figure style="margin: 0; margin-bottom: 20px;">
    <video class="" style="border: none;" src="/assets/images/blog/2020-09-22-skeletal-mesh/running.mp4" muted autoplay loop alt="">
    </video>
      <figcaption>
    Skeletal Mesh running around in my environment
  </figcaption>
</figure>
For this week's assignment, I revisited my understanding of skeletal meshes and working with them in Unreal Engine, through Matt's tutorials. I became familiar with this type of mesh last semester, through work I did for Synthetic Architectures and for my Live Image Processing & Performance final project. 

The Unreal concepts are clear to me so far, I'm finally starting to feel a little bit of control over the software. My personal learning goal for this week however has been figuring out how to bring an avatar created in Daz Studio into Unreal, and applying a Mixamo animation to it. Bringing an FBX file exported from Daz into the Mixamo web interface doesn't work properly (conversion fails, for some reason...,) so I had to look for alternatives. I found a [Youtube tutorial](https://www.youtube.com/watch?v=pEK7fvAIV_A) which explains how to use Maya as a bridge, in order to apply an animation downloaded from Mixamo to a custom Maya character – which in my case was a Daz character, transferred to Maya using the Daz to Maya bridge. This process involves creating a control rig for the downloaded Mixamo character, whose bone mapping needs to 100% match the control rig of the exported Daz character. I accidentally mis-mapped some of the hand bones (image below), which caused my character's fingers to look completely broken, but other than that, the tutorial got me what I needed.

<figure style="margin: 0; margin-bottom: 20px;">
    <img class="" style="border: none;" src="/assets/images/blog/2020-09-22-skeletal-mesh/hands.png"/>
  <figcaption>
    Twisted fingers because of hand skeleton wrong mapping in Maya
  </figcaption>
</figure>

The other thing I wanted to learn more about this week had to do with the textures associated with my character, so I gave him a few face tattoos ("Trust your body" / "Trust nobody") by adding the text in Photoshop on the texture file associated with the body material.

In the video above, I also used a camera shake in order to simulate the up-down running motion (camera is attached to character's head, which can be seen in a few seconds at the beginning / end.) I also adjusted the character's morph targets through a Blueprint. The animation would still need a good amount of work in order to feel somewhat realistic (running motion, speed, face gestures, mouth, etc.,) but I'm happy I got the Daz character to work with Mixamo animations.


<br/><br/><br/><br/>