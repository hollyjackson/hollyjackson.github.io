---
layout: post
title:  Robotic Locomotion
description:  Designing robotic systems and truss structures for efficient self-assembly (age 17).
date:   2018-12-01 00:00:00 +0000
image:  '/images/wormbot.gif'
tags:   [NASA, high school]
---

### As part of the larger [MADCAT project](https://news.mit.edu/2019/engineers-demonstrate-lighter-flexible-airplane-wing-0401), the NASA Ames Coded Structures Lab was investigating the robotic assembly of truss structures in 2018.  During the summer of 2018, I worked under [Dr. Kenny Cheung](https://www.nasa.gov/centers/ames/cct/about/bios/kennycheung) on two projects as part of two different lab sprints.

### First, I designed and prototyped an attachment for truss voxels that requires minimal stimulus from the robotic assembler.  Second, I designed and prototypes a worm-like robot that could be used to traverse a lattice structure.

![NASA concept image]({{site.baseurl}}/images/robotic-locomotion/nasa_2015.png)
*Source: NASA Ames Coded Structures Lab concept image, 2015.*

# Minimal Stimulus Attachment

In order to ease and hasten robotic assembly, I designed attachment mechanisms for a vertex-adjacent, vertex-attached octahedral lattice. The attachment mechanisms would allow up to five nodes to be locked in place with a single rotation. The design was inspired by Penrose's self-assembling mechanisms.

The minimal stimulus voxel consisted of two different attachment mechanisms. At the top and bottom, a friction-fit, genderless "twist" node helps correct for misalignment during the initial voxel placement. At the remaining four nodes, friction-fit, genderless "claws" lock in place as the voxel is rotated by the robotic assembler. The complete voxel design is shown below.

![Voxel design]({{site.baseurl}}/images/robotic-locomotion/voxel.png)
*Minimal stimulus attachment design.*

![Demo]({{site.baseurl}}/images/robotic-locomotion/voxel_twist_demo.gif)
*2x2 minimal stimulus lattice assembly.*

The design is advantageous because of its genderless nodes, ability to correct for misalignment, and ability to lock in place with one simple movement. However, these minimal stimulus attachments give the voxel an orientation (a top/bottom vs. side) because two different types of connectors are used. Additionally, these attachments may not be robust enough since they are held together solely by friction.


![Prototype]({{site.baseurl}}/images/robotic-locomotion/prototype.JPG)
*Prototype of voxels with minimal stimulus attachments.*

# Worm-Like Robot

As part of a larger investigation on different mechanisms for robotic locomotion on a lattice, I designed and prototyped a worm-like locomotion system. Inspired by continuum robotics, I prototyped two designs as a proof-of-concept of the different locomotion steps a worm-like robot could achieve.

I first prototyped a robot that showed a simple inchworm behavior (shown below). The robot compressed and expanded in order to linear traverse a surface.

![Inchworm]({{site.baseurl}}/images/robotic-locomotion/inchworm.gif)
*Inchworm robot in motion.*

Next, I prototyped a robot with more complex behavior. In addition to the simple compression and expansions maneuver, this worm-bot could curve upwards, downwards, left, and right. It also could combine any of these six motions to create intermediate steps.

![Wormbot]({{site.baseurl}}/images/robotic-locomotion/wormbot.gif)
*Worm-bot in motion.*

I performed an in-depth locomotion analysis of the second robot, which can be accessed [here]({{site.baseurl}}/files/LocomotionAnalysisWorm_HMJ.pdf).

![Wormbot locomotion]({{site.baseurl}}/images/robotic-locomotion/wormbot_locomotion.png)
*Two-dimensional overview of the dynamics of four of the five key locomotion requirements of wormbot with unique key states highlighted.*
