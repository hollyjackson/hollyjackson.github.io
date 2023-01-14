---
layout: post
title:  Billiard Bots
description: The secret to the best shot, as told by a robot and a 12-year-old.
date:   2013-12-01 00:00:00 +0000
image:  '/images/billiard_bots.png'
tags:   [science fair]
---

### My tiny 7th grade self wanted to figure out the science behind trick shots in pool, so I could improve my game (because as a 12-year-old I was obviously very involved in the professional pool circuit).  Conveniently, my dad worked for a robotics company ([Adept Technology](https://en.wikipedia.org/wiki/Omron_Adept)) and brought me home an Adept Cobra i800 4-axis robot.

When you hit the cue ball at an angle with respect to the object ball, you create cut-induced throw on the object ball, causing the object ball to travel tangent to the impact line.  When you hit the cue ball with a clockwise or counterclockwise spin (accomplished by hitting the cue ball off center), you create spin-induced throw on the object ball, and the sliding friction propels the object ball to throw left or right (for clockwise or counterclockwise spin respectively).  In my experiment, I attached a cue ball to the robot so I could hit an object ball with cut, spin, and a combination of both. Using simple trigonometry, I predicted the object ball's trajectory in each shot.

The results?  I'm now marginally better at pool.  And there are permanent scuffs in my parents' pool table from robotic abuse.

# Figures

![Throw]({{site.baseurl}}/images/billiard-bots/throw.png)
*The effects of cut-induced throw, spin-induced throw, and a combination of both (total-induced throw).*

![Setup1]({{site.baseurl}}/images/billiard-bots/setup1.png)
*__Setup.__ I used a wooden fixture to properly position the cue and object balls. In half of the tests, I placed a rubber band around the cue ball to create more friction.*

![Setup2]({{site.baseurl}}/images/billiard-bots/setup2.png)
*Small child (me) collecting data on final position of object ball.*

![Cut]({{site.baseurl}}/images/billiard-bots/cut.png)
*A prediction of the effect of 7° cut angle.*

![Robot code]({{site.baseurl}}/images/billiard-bots/robot_code.JPG)
*Simple code driving the robot to strike the object ball with the cue ball.*