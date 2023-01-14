---
layout: post
title:  Carotid Artery Pressure Estimation
description: Estimating carotid artery blood pressure with an iterative inverse model.
date:   2019-12-01 00:00:00 +0000
image:  '/images/numerical-simulation/system-model.png'
tags:   [MIT, class project]
---

### In Fall 2019, I took MIT graduate class 6.336 ([Introduction to Numerical Modeling and Simulation](https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-336j-introduction-to-numerical-simulation-sma-5211-fall-2003/)) taught by [Prof. Luca Daniel](http://www.mit.edu/~dluca/).  For the final project, with classmates Elizabeth Healey and Alex Jaffe, we developed a numerical model to estimate the blood pressure of the carotid artery from force-coupled ultrasound (FCU) data.

We employed a 1-D forward finite difference to predict the tissue, vessel wall, and lumen displacements under the known force applied to the surface of the skin by the ultrasound probe.  We nested this forward model into an iterative inverse model where we optimized the surrounding tissue and carotid wall stiffness and lumen pressure parameters to minimize the difference between predicted and observed displacements.  The final output of our model a sampled carotid lumen pressure wave. We validated the systolic and diastolic pressure values of this wave with readings from an oscillometric blood pressure cuff.

# Figures

![System model]({{site.baseurl}}/images/numerical-simulation/system-model.png)
*Our system model overlaid on long-axis carotid image.*

![Results]({{site.baseurl}}/images/numerical-simulation/forward_model_force_ramp_25.png)
*Predicted tissue (blue), vessel wall (green), and lumen (red) positions for a 1-D strip. Displacements predicted at increasing external pressures using forward finite difference model using estimated values for tissue, vessel wall, and lumen parameters.*