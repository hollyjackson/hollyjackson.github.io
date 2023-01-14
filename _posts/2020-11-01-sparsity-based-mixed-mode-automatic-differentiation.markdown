---
layout: post
title:  Sparsity-Based Mixed Mode Automatic Differentiation
description: Optimizing automatic differentation for nonlinear nodal analysis.
date:   2020-11-01 00:00:00 +0000
image:  '/images/matrix_coloring.jpg'
tags:   [MIT, class project]
---

### In Fall 2020, I took MIT class 18.337 ([Parallel Computing and Scientific Machine Learning](https://github.com/mitmath/18337)) taught by [Prof. Chris Rackauckas](https://chrisrackauckas.com/).  For the final project, I implemented and analyzed several automatic differentiation techniques for nonlinear nodal analysis in [Julia](https://julialang.org/).

Due to their grid-like construction, nodal systems often have sparse Jacobian matrices, and we can take advantage of this sparsity to accelerate their computation. In my project, I implemented forward-mode and reverse-mode automatic differentiation to construct the Jacobian of a nodal system. I implemented a matrix coloring scheme to accelerate sparse forward-mode automatic differentiation of the Jacobian of nodal systems. In addition, I implement a combined sparse automatic differentiation technique to compute a Jacobian that is mostly sparse, with several dense rows.

My full final project report can be accessed [here]({{site.basurl}}/files/18_337_Final_Project_HollyJackson.pdf).  The accompanying Julia script is posted on [Github](https://github.com/hollyjackson/AutomaticDifferentiation).


![Bomber shirt]({{site.baseurl}}/images/matrix_coloring.JPG)
*The Jacobian matrix for a simple system and its compressed representation.*
