---
layout: post
title:  Real-Time Image Processing with a Microcontroller
description: A simple real-time image processing pipeline on a PSoC.
date:   2020-12-01 00:00:00 +0000
image:  '/images/setup.jpg'
tags:   [MIT, class project, microcontroller]
---

### In Spring 2020, I took MIT class 6.115 ([Microcomputer Project Lab](http://web.mit.edu/6.115/www/page/course-objectives.html)) taught by [Prof. Steve Leeb](https://www.rle.mit.edu/people/directory/steven-leeb/).  For the final project, I created a simple GUI to perform efficient image processing operations – such as blur, edge detection, and inversion – on images captured on the fly.

My setup includes only three parts: a PSoC 5LP board, a color TFT display with 320x240 pixel resolution, and an Arduino compatible color camera.  Using the potentiometer and a button on the PSoC 5LP, the user can select from six menu options displayed on the TFT screen, including a "live" mode which continuously captures sequential images from the camera (rough every 0.87 seconds) and updates the TFT display until paused by a second button press.  Once they select an image to process, they can iteratively apply image processing functions until they reach a desired result.

My full final project report can be accessed [here](/files/6115FinalProject_HMJ.pdf).  Check out [this blog post](https://community.cypress.com/community/topics/cypress-community-blogs/cypress-university-alliance-blog/blog/2020/05/15/how-engineering-students-learn-while-sheltering-in-place) from Cypress, the creator of PSoC, which mentions my project!

# Figures

![Project schematic]({{site.baseurl}}/images/image-processing/final_proj_schematic.png)
*Project schematic.*

![Project setup]({{site.baseurl}}/images/image-processing/setup.jpg)
*Project setup. From left to right - Arduino camera, PSoC 5LP board, TFT screen.*

![PSoC Creator schematic]({{site.baseurl}}/images/image-processing/creator_schematic.JPG)
*“Top Design” schematic of SPI interface for TFT screen, ADC for menu selection, and I2C component and dual-stage latching system for Arduino camera in PSoC Creator.*

![Timing diagram]({{site.baseurl}}/images/image-processing/timing_diagram.bmp)
*Timing diagram for reading from the OV7670 camera to the PSoC using dual-stage pixel latching system*

![Sample peppers]({{site.baseurl}}/images/image-processing/sample_peppers.png)
*Sample peppers image – original, gradient, blur, invert (each applied individually, image reset before each operation).*

![Bomber shirt]({{site.baseurl}}/images/image-processing/bomber_shirt.png)
*Me in my bomber shirt – original, gradient, inverted (applied sequentially).*

# Demo Videos

<p><iframe width="560" height="315" src="https://www.youtube.com/embed/mPehnXVb3rM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></p>

<p><iframe width="560" height="315" src="https://www.youtube.com/embed/pnxzISbvqC0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></p>
