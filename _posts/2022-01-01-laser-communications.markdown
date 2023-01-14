---
layout: post
title:  Laser Communications
description: Creating a mini internet with lasers.
date:   2022-01-01 00:01:00 +0000
image:  '/images/laser_comms.gif'
tags:   [MIT, class project, microcontroller]
---

### In Spring 2022, I took MIT class 6.08 ([Introduction to Embedded Systems](https://iesc.io/608/S22/information)) taught by [Prof. Joe Steinmeyer](https://www.jodalyst.com/).  For the final project -- with classmates Mohamed Mohamed, Shara Bhuiyan, Eesha Banerjee, and Rachel Robinson -- we created a mini internet with lasers.  Our wireless system allows information to be sent through a modulating laser to a passive receiver (phototransistor) tens of feet away.

Laser communication systems like ours are already a budding area of research.  If you've ever heard of [Google X's project Taara](https://x.company/projects/taara/) -- this is a simple, Arduino implementation of it.  In addition, NASA is working on laser communications for high speed data transfers between space and Earth.  Laser communication technology has also shown the potential to connect remote regions with spotty internet access, with limited downtime and high data transfer rates.  However, this technology is currently only accessible to companies and labs with advaned technology and resources.  Our team replicated this technology on a smaller scale in hopes of learning more about various concepts such as signal processing, data compression and storage, and encoding/decoding techniques

I led the development and implementation of the transmitter modulation scheme and receiver decoding scheme.  Below, I have included some selections from our final project report.

# System Overview

Our laser communication system was composed of an emitter (laser) and receiver (phototransitor), each power by an Arduino ESP32.  The system can operate reliably at 40kbps or slower.  The speed of the system was achieved via hardware optimization as well as taking advantage of the UART integrated circuit to encode and decode our messages (as opposed to analog pins).

The emitter setup also included an interface to download photos and music from the internet to be sent through the laser; this interface was developed by some of my teammates. 

Figure 1 shows the schematic for the emitter, and figure 2 shows the schematic for the receiver.  The physical setup is shown in figure 3, with the emitter on the right and the received on the left.

![32 bit signal]({{site.baseurl}}/images/laser-communications/image10.png)
*__Figure 1.__ Emitter schematic.*

![32 bit signal]({{site.baseurl}}/images/laser-communications/image4.png)
*__Figure 2.__ Receiver schematic.*

![32 bit signal]({{site.baseurl}}/images/laser-communications/image5.jpg)
*__Figure 3.__ Physical setup, emitter on the right, receiver on the left.*


# Design Choices

In the following section, I will explain the motivation behind our choices for the design of the communication system between the emitter and receiver.

## Choosing an Encoding Scheme

### Idea #1: Pulse-amplitude modulation scheme

The first idea we had played around with during week 0 was transmitting our image data using a pulse-amplitude modulation scheme.  For every byte of our image data, we would send a pulse of a specific light intensity from the laser to the receiver.  This would allow for a high data transmission rate.  However, we quickly abandoned this plan due to 2 main issues.
* It was not possible to accurately control the intensity/amplitude of our laser signal.
* This method is highly susceptible to noise.

<div style="margin: auto;max-width: 50%;">
    <img src="/images/laser-communications/image6.png">
</div>
<br>

### Idea #2: Directly transmit binary by switching our laser on & off

In order to avoid error introduced by the pulse amplitude modulation scheme, we can instead send our image data directly as binary code.  Basically, we can turn the laser all the way up to send a 1 and all the way off to send a 0 (see example below).  However, this method gives us no sense of the clock cycle of the transmitter.  This may make it difficult to separate out the exact number of 1s and 0s in the input, especially when the same value appears consecutively many times.

![Byte]({{site.baseurl}}/images/laser-communications/image8.png)

### Idea #3: Directly transmit binary with a Manchester encoding

This idea is very similar to idea #2.  However, instead of just sending a 1 (laser on) or 1 (laser off), we will send 2 bits for every 1 bit in our image data.  Specifically, we will use the Manchester encoding.  We will send 10 for 1 and 01 for 0.  This allows us to easily sync the clock of the receiver to the clock of the transmitter by detecting edges in the received signal.  Our receiver is consequently able to reconstruct the signal much more clearly.

<div style="margin: auto;max-width: 75%;">
    <img src="/images/laser-communications/image21.png">
</div>
<br>

During the first three weeks of our project, we implemented our laser communication network using this encoding scheme.  On emitter end, we converted sample images into manchester encoded binary arrays.  On receiver end, we parsed bits as they were received by the phototransistor and identified ones and zeros (see Figure 4).  We wrote code to identify clock cycle and, after the full message was received, Manchester decode the result. In order to properly parse faint results, we added a gain circuit to the receiver to amplify the received signal 11x.  The schematic is shown in Figure 5.

![32 bit signal]({{site.baseurl}}/images/laser-communications/image18.png)
*__Figure 4.__ A 32-bit received signal plotted in the serial plotter.*

![Early receiver schematic]({{site.baseurl}}/images/laser-communications/image9.png)
*__Figure 5.__ Early receiver schematic.*

![Early example]({{site.baseurl}}/images/laser-communications/figure_6.png)
*__Figure 6.__ (LEFT) An (upside-down) image of the dome on the transmitter TFT and a partial reconstruction of the dome on the receiver TFT (RIGHT) A sample signal plotted on the receiver at a high data rate.*  

We quickly ran into data rate limitations using this approach.  Even after optimizing our receiver-end parsing code, the fastest data rate we were able to achieve was 333bps.  Figure 6 shows our results at this stage and their limitations.  On the left, you can see an image of the dome partially reconstructed on the TFT.  On the right, you can see a sample received signal sent a 1kps.  At 1kps per second, you can notice, the peaks begin to get “spikey” in this plot.  Higher than 1kHz, we begin to miss peaks and can lose data.
We wanted a faster data rate, so we turned to a fourth idea.

### Idea #4: (FINAL IMPLEMENTATION) Control the laser and receiver using the ESP32 UART pins

We connect the laser to a UART TX pin and the receiver to a UART RX pin.  This automatically modulates the laser at the serial baud rate, and the serial receiver pin will automatically parse the data for us!  We can remove Manchester encoding on the input data.

This helps us increase our data rate significantly for a number of reasons.  First, we would no longer have significant latencies on the receiver end.  Second, we would not need a step detection or decoding scheme.  In addition, while the serial buffer was filling, we have spare time to plot the result on the TFT!

**_Laser Communication Meets Serial Communication_**

While we were implementing our laser communication using the serial pins, we ran into several obstacles we solved with hardware.  We have detailed each one below.

<b>1. Inverted signal</b>

After some initial experiments, we realized that – someone in our network (maye in the laser, phototransistor, or op amp circuit) – the signal was being inverted.  So, when the UART receive pin was attempting to parse the signal based on the stop bit, it actually couldn’t figure out where to stop/start because it was receiving the opposite bit from expected.

To fix this, we added an inverter to the transmitter.  We started getting some initial results at higher baud rates, but they were buggy.  See the figure below for example.

![Partial result]({{site.baseurl}}/images/laser-communications/image2.jpg)
*__Figure 7.__ A partial result at 9.6bps.*

<b>2. Low voltage</b>

The next problem we noticed was that (possibly due to the internal resistance of the inverter), the voltage of the transmitter was alternating between 0 and 2.6 V.  This was causing issues because parts of the signal were being lost on the receiver end, and there were errors in our reconstructed image.  This became even more apparent when we tried to work with color images.  In order to fix this, we hooked up 4 inverters in parallel.  This finally made the inverted voltage for the transmitter go between 0 and 3.3 V.  

Even when we increase the voltage, we were having issues with laser power.  Prof. Steinmeyer suggested we hook the laser up to a collector pin of a transistor.  This gave us successful results up to around 5kbps.  See an example below.

![Partial result]({{site.baseurl}}/images/laser-communications/image10.png)
*__Figure 8.__ New emitter schematic after steps 1 and 2.*

<b>3. Issues increasing the baud rate</b>

Unfortunately, we were still getting buggy results at rates higher than 5kbps.  We plotted the signal on the oscilloscope to see exactly what was the limiting factor.  As can be seen in Figure 8, at high baud rates, the received signal would begin to look like a sawtooth wave.  This “slow rise” was causing issues.  We decided to fix this in hardware.

![Received signal]({{site.baseurl}}/images/laser-communications/image19.jpg)
*__Figure 9.__ Received signal at 9.6kbps.*

The first thing we did was decrease the resistance of the resistor forming a voltage divider with the phototransistor.  We reduced it from its originally value (22kOhm) to as low as safely possible (around 1.1 kOHm).  We checked against the phototransistor data sheet to guarantee this was safe.  As a result, the received signal at 9.6kbps improved, and the better result can be seen in Figure 11.

![Updated schematic]({{site.baseurl}}/images/laser-communications/image11.png)
*__Figure 10.__ Updated schematic.*

![Received signal]({{site.baseurl}}/images/laser-communications/image12.jpg)
*__Figure 11.__ Received signal at 9.6kbps after reducing 22kOhm resistor to 1.1kOhm.*

This allowed us to finally get successful results at 9.6kbps.

However, reducing this resistor value caused an unfortunate tradeoff.  As we reduced this voltage, the “low” value of the received signal (which is supposed to hang around 0 V) began floating higher and higher.  This issue is shown in Figure 12 below.

![Received signal]({{site.baseurl}}/images/laser-communications/image15.jpg)
*__Figure 12.__ Received signal that alternates between about 1.5 V and 5V (instead of 0V and 3.3 V).*

In addition, when it was amplified in the op-amp circuit, it becomes so high the UART RX pin is no longer able to tell it is supposed to be the 0-bit value.  Thankfully, we had one more solution to this problem in hardware!

Our final goal was to zoom in on this part of the sawtooth wave, shown in Figure 13.

![Received signal]({{site.baseurl}}/images/laser-communications/image14.jpg)
*__Figure 13.__ We want to design our circuit such that we can
“zoom in” on this red circled section of the original sawtooth signal.*

To accomplish this final tasked, we did two things
1. Instead of connecting the op-amp minus pin to GND, we connected it to a voltage divider, designed to float at around 1 V (instead of 0V).  This produces an offset, that counteracts the floating “low” value issue we were encountering at higher data rates.
2. We increase the gain of our op amp circuit even more, so all values higher than this max were truncated.

<b>This helped us approximate a beautiful square wave, even for data rates as high as 40kbps.  See figures below.</b>

![New receiver schematic]({{site.baseurl}}/images/laser-communications/image4.png)
*__Figure 14.__ New and improved receiver schematic.*

![Received signal 20kbps]({{site.baseurl}}/images/laser-communications/image1.jpg)
*__Figure 15.__ The received signal at 20kbps is now a nice square wave!*

![Received signal 40kbps]({{site.baseurl}}/images/laser-communications/image7.jpg)
*__Figure 16.__ This is the received signal at 40kbps!  This is about as fast as we can go without running into the sawtooth and floating values issues again.*

![Received signal 75kbps]({{site.baseurl}}/images/laser-communications/image7.jpg)
*__Figure 17.__ At 75kbps, we are no longer able to parse the signal.*

# Demo

I have included a few examples of our system at work.

Figure 18 shows an image of MIT's great dome that was transferred from the emitter to the receiver at 40kHz.

![Transferred dome]({{site.baseurl}}/images/laser-communications/successful_dome.jpg)
*__Figure 18.__ An image of MIT's great dome that was sent to the receiver (left) at 40kHz.*

Figure 19 shows an image that was downloaded from the server piece-by-piece on the emitter end and sent to the receiver at 40kHz (with a slight cyclic offset bug).

![Transferred image]({{site.baseurl}}/images/laser-communications/image5.jpg)
*__Figure 19.__ An image that was downloaded from the server is sent to the receiver at 40kbps.  (There is a small cyclic offset from some faulty initial bits we weren’t able to fix).*

The following video shows a simple photo being sent accurately from the emitter to the receiver at increasing rates.

<iframe src="https://player.vimeo.com/video/708536923?h=d1988e2b74" width="426" height="760" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<br>
This demo shows a short monotone audio clip of Michael Jackson's "Beat It" transmitted at 40kHz from the emitter to the receiver.  The clip shows the audio play almost instantenously on the receiver.

<p><iframe width="560" height="315" src="https://www.youtube.com/embed/XhzRCEREgmY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></p>

Finally, this demo shows our laser communication system working successfully at over 20 ft range.

<p><iframe width="560" height="315" src="https://www.youtube.com/embed/u-T0tAnKMXY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></p>

