---
layout: post
title:  Evolution Gym
date:   2021-11-01 00:01:00 +0000
description: The first and largest benchmark for evolving soft robot morphology.
image:  '/images/cppn_walking_flat_3_g7_r1.gif'
tags:   [MIT, interdisciplinary, evolutionary algorithms]
---

<p><iframe width="560" height="315" src="https://www.youtube.com/embed/VWivmi9j608" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></p>

# Abstract

Both the design and control of a robot play equally important roles in its task performance.  However, while optimal control is well studied in the machine learning and robotics community, less attention is placed on finding the optimal robot design.  This is mainly because co-optimizing design and control in robotics is characterized as a challenging problem, and more importantly, a comprehensive evaluation benchmark for co-optimization does not exist.  In this paper, we propose Evolution Gym, the first large-scale benchmark for co-optimizing the design and control of soft robots. In our benchmark, each robot is composed of different types of voxels (e.g., soft, rigid, actuators), resulting in a modular and expressive robot design space. Our benchmark environments span a wide range of tasks, including locomotion on various types of terrains and manipulation. Furthermore, we develop several robot co-evolution algorithms by combining state-of-the-art design optimization methods and deep reinforcement learning techniques. Evaluating the algorithms on our benchmark platform, we observe robots exhibiting increasingly complex behaviors as evolution progresses, with the best evolved designs solving many of our proposed tasks. Additionally, even though robot designs are evolved autonomously from scratch without prior knowledge, they often grow to resemble existing natural creatures while outperforming hand-designed robots. Nevertheless, all tested algorithms fail to find robots that succeed in our hardest environments. This suggests that more advanced algorithms are required to explore the high-dimensional design space and evolve increasingly intelligent robots – an area of research in which we hope Evolution Gym will accelerate progress. Our website with code, environments, documentation, and tutorials is available [here](http://evogym.csail.mit.edu).

# Publication


### Evolution Gym: A Large-Scale Benchmark for Evolving Soft Robots
[Jagdeep Singh Bhatia](https://jagdeepsb.github.io/), <u>Holly Jackson</u>, [Yunsheng Tian](https://www.yunshengtian.com/), [Jie Xu](http://people.csail.mit.edu/jiex/), [Wojciech Matusik](http://people.csail.mit.edu/wojciech/)
<br>
<span style="color:#57ad68">*Thirty-fifth Conference on Neural Information Processing Systems (NeurIPS)*, 2021</span>
<br><br>
<a class="button button--pub" href="https://papers.nips.cc/paper/2021/file/118921efba23fc329e6560b27861f0c2-Paper.pdf">Paper</a>
<a class="button button--pub" href="https://github.com/EvolutionGym">Code</a>
<a class="button button--pub" href="https://evolutiongym.github.io/">Docs</a>
<a class="button button--pub" href="/files/EvoGym_poster.png">Poster</a>
<a class="button button--pub" href="https://www.youtube.com/watch?v=VWivmi9j608&t=1s&ab_channel=MITCSAIL">Video</a>
<a class="button button--pub" href="https://news.mit.edu/2021/system-designing-training-intelligent-soft-robots-1207">MIT News</a>
<a class="button button--pub" href="https://www.wired.com/story/see-little-robots-get-swole-in-this-virtual-gym/">WIRED</a>
<a class="button button--pub" href="https://spectrum.ieee.org/robot-design">IEEE Spectrum</a>
