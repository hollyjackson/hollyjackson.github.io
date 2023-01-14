---
layout: post
title:  Computational Cardiology
description:  An automated algorithm for heart murmur detection (age 14).
date:   2015-12-01 00:00:00 +0000
image:  '/images/computational_cardiology_steps.png'
tags:   [science fair, high school]
---

In my freshman year of high school, I developed an algorithm in [FreeMat](http://freemat.sourceforge.net/) (basically free MATLAB, before I had the luxury of MIT paying for my software) to process stethoscope sounds and accurately detect the presence and type of a patient’s heart murmur.  The project was inspired by my younger sister Kate, who was born with a heart condition (a bicuspid aortic valve) which causes her to have a heart murmur.

Simply, the algorithm took the envelope of a pre-recorded heartbeat and isolated the systolic and diastolic sections by finding the local maxima of the filtered envelope. I diagnosed the heartbeat by convolving each section with simple geometric filters that matched profiles of common murmurs. I tested the algorithm against seventy-one prerecorded heart sounds from public websites dedicated to ear-training medical professionals. I identified normal heartbeats with a 100% success rate and murmurs with a 95% success rate. I categorized both systolic and diastolic murmurs with 70% accuracy.

This project was a great first look into the basics of signal processing for me.

# Algorithmic Workflow

![Step1]({{site.baseurl}}/images/computational-cardiology/step1.png)

![Step2]({{site.baseurl}}/images/computational-cardiology/step2.png)

![Step3]({{site.baseurl}}/images/computational-cardiology/step3.png)

![Step4]({{site.baseurl}}/images/computational-cardiology/step4.png)

![Step4]({{site.baseurl}}/images/computational-cardiology/step5.png)

![Step4]({{site.baseurl}}/images/computational-cardiology/step6.png)

![Step4]({{site.baseurl}}/images/computational-cardiology/filters.png)

# Video

<p><iframe width="560" height="315" src="https://www.youtube.com/embed/6FnHQH8JeSM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></p>
