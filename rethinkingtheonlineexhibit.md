---
layout: projectPage
title: Rethinking the Online Exhibit (2016)
paragraphs:
 - text: |
     This research project investigates the space of online exhibitions, with a focus on creating new types of interactions for exhibiting 3-dimensional objects.
 - text: |
     Most existing online exhibitions simply act as an index of their physical counterparts, skipping interactivity all together. This is a missed opportunity, as the Web is a powerful, playful medium capable of enhancing the way a user interacts with art remotely. Throughout this project, we abstracted away a few qualities of a physical exhibition and brought them into the browser: it is an experience shared with other people, it has a limited lifespan, it requires moving through a space.
 - text: |
     The outcome consisted of a few web experiments showcasing a collection of glass objects. They make heavy use of the webcam—for navigating the website, for rotating objects, for visualizing the presence of other users on the website.
 - text: |
     Link:<br/>
     <a class="underlined" href="https://cpsc490prototype.herokuapp.com/" target="__blank">https://cpsc490prototype.herokuapp.com/</a>
 - text: |
     Developed in partial fulfillment of the Yale Computer Science degree under the supervision of Holly Rushmeier. Built using Node.js, React JS, web sockets and a face tracking library.
   small: true
images:
 - url: https://cortex.persona.co/w/1436/q/67/i/62973e82ba3c3a30886442548e2fc1c76de1a5224d372b6bd0d7a9e57892e484/webcam_navigation_solo.gif
   description: Website navigation using the position of one’s face in front of the camera. The 3-dimensional objects are photographed from 18 different angles and rotated according to the face position.
 - url: https://cortex.persona.co/w/1435/q/67/i/833b13d472daa9b064bf4f3f11d2c3c847ddaacc7a696eed01167a6cbb421340/pixels_3_users.gif
   description: Visualizing two users visiting the website at the same time, by mapping their face positions onto the screen and streaming the data in real time.
 - url: https://cortex.persona.co/w/994/q/67/i/f8190ebd2a34f71490cc2a2fba14a011d8a45e1584efd7fe533228dccaca77fa/user_increase_cropped.gif
   description: Each time someone visits the website, a pixel on the screen becomes completely dark. After a high enough number of visitors (around a million), the exhibition renders itself unusable.
---