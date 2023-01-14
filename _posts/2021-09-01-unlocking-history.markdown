---
layout: post
title:  Unlocking History
date:   2021-09-01 00:00:00 +0000
description: An algorithm to virtually unfold sealed historical letters.
image:  '/images/unfolding_animation.gif'
image_include: True
tags:   [MIT, interdisciplinary]
---

Over 300 years ago on July 31, 1697, Frenchman Jacques Sennacques sat down to write a letter to his cousin Pierre La Pers. Jacques was following up on a tragic request – asking for a certified copy of the death certificate of Daniel Le Pers.  Jacques’ tone was urgent — French inheritance laws had just changed in 1697, and we suspect he needed proof Daniel died before the amendment.  As any 17th Century Frenchman would, Jacques ended his letter with a long religious signoff.  He carefully folded his message with a complicated sequence of diagonal folds and tucks, closing the entire packet with a starch seal.

While Jacques’ intricate folding techniques may seem unconventional, most letters were folded and secured to become their own envelopes before the modern envelope was popularized in the 1830s.  This practice, called [letterlocking](https://letterlocking.org/), was an everyday activity for centuries, across cultures, borders, and social classes.

Despite the care Jacques took crafting his letter, Pierre unfortunately never received the note.  In fact, Jacques’ letter still remains completely sealed today – stowed away in [a trunk of over 2600 other undelivered letters](https://brienne.org/) – with only Pierre’s name and address visible from the outside.  Jacques’ message and the intricate internal mechanics of his letter are only known to us because they have been entirely virtually reconstructed.

### Since age 15, I — alongside researcher [Amanda Ghassaei](https://amandaghassaei.com/) — have been developing the fully automated virtual unfolding process that revealed Jacques’ message and the 3D folded geometry of his letter, as well as reconstructions of other unopened letterpackets from the same trunk.

This work is part of a wonderful interdisciplinary international collaboration of historians, mathematicians, and research scientists called the Unlocking History Research Group.  Our new technology enables conservators to preserve a letter’s intricate internal engineering while allowing historians to read its words.

Check our our work in [Nature Communications](https://www.nature.com/articles/s41467-021-21326-w).  Or continue reading below to learn more about the exciting backstory of the project.

![Reading a letter]({{site.baseurl}}/images/14_HollyJackson_reading_a_letter.JPG)

For the past 20 years, [Jana Dambrogio](http://www.janadambrogio.com/) (the current MIT Thomas F. Peterson (1957) conservator) has pioneered the study of letterlocking.  Along with King’s college professor, [Dr. Daniel Starza Smith](https://www.kcl.ac.uk/people/dr-daniel-starza-smith), she has studied over 250,000 historical locked letters and produced the first systematization of letterlocking techniques.  These techniques — which can be as small as slits and tucks in paper — are often lost when a letterpacket is opened, especially since they were designed to be irreversibly damaged so that the intended recipient could detect any tampering.  Current imaging and repair protocols threaten to destroy or obscure precious letterlocking details and, more damagingly, many institutions open surviving locked letterpackets on request.

For the most part, Jana and Daniel have relied on reverse-engineering surviving opened documents to retrace letterlocking trends.  However, the [Brienne collection](https://brienne.org/) — a European postmaster’s trunk with 300-year-old undelivered letters, 600 of which still remain closed (including Jacques’ letter) — presented a rare opportunity to study unopened letters with an incredible diversity of folding patterns.  Jana and Daniel began to search for a group who could develop the technology to establish new, non-destructive avenues for conservation of these artifacts and challenge archives around the world to preserve locked letters intact.

![The Brienne trunk]({{site.baseurl}}/images/08_Brienne trunk.jpg)
*The Brienne trunk.*

Hope for a new conservation approach blossomed when Jana and Daniel met microtomography experts [Prof. Graham Davis](https://www.qmul.ac.uk/dentistry/people/profiles/grahamdavis.html) and [Dr. David Mills](https://www.qmul.ac.uk/dentistry/people/profiles/davidmills.html) at Queen Mary University London.  Graham and David scanned several letterpackets from the Brienne collection on their custom x-ray microtomography machines (think CT scanner) — originally designed for medical imaging of teeth.  XMT scanning produces a volumetric dataset representing material density in 3D space; the high iron content of 17th-century inks causes text to appear as bright (higher density) regions within the scan.

<div class="gallery-box">
  <div class="gallery">
    <img src="/images/02_scan_animation_10_letters.gif">
    <img src="/images/01_scan_flythrough_11_letters.gif">
    <img src="/images/03_scan_animation_DB-2004.gif">
  </div>
  <em>Gallery / <a href="https://unsplash.com/" target="_blank">Computer rendering of XMT scan of letterpackets imaged by the Microtomography Research Group at Queen Mary University of London.</a></em>
</div>

### Enter 15-year-old me.

I had been interning at NASA Ames under [Dr. Kenny Cheung](https://www.nasa.gov/centers/ames/cct/about/bios/kennycheung) for a little less than a year.  One day during Ames happy hour, Kenny asked me, over some mini egg rolls, if I wanted to intern at MIT that summer with his former PhD advisor [Prof. Neil Gershenfeld](http://ng.cba.mit.edu/) at the [Center for Bits and Atoms](https://cba.mit.edu/) (CBA).  Naturally, I screamed "yes," and, five months later, I was in Cambridge at the MIT Media Lab.

At MIT, I met [Amanda](https://amandaghassaei.com/), who at the time was a Master’s student under Neil at CBA.  We were introduced to the beauty of letterlocking by Jana and began developing the virtual unfolding algorithm with high-level advice from MIT professor [Prof. Erik Demaine](http://erikdemaine.org/) — an expert in computational origami — and [Martin Demaine](http://martindemaine.org/) — MIT robotics engineer and artist-in-residence.

With guidance from Erik over the course of the next five years, Amanda and I engineered a highly complex, fully 3D, generalizable unfolding algorithm. 

![Algorithm progress]({{site.baseurl}}/images/04_23_results_progress_db-1538.jpg)
*Incremental improvement in our virtual unfolding results.*

Amanda and I were two young female students working on cutting-edge geometric data processing research in the male-dominated MIT Media Lab.  Throughout many important transitions, as I moved from high school to college and Amanda moved from graduate school to a job at Adobe Research, we stuck together — collaborating virtually and in-person.

I worked on the project through several high school summers at MIT, virtually from California during the school year, and throughout the first half of my undergraduate experience at MIT.  During my summers at MIT, Amanda and I filled and re-filled whiteboards with poorly-drawn free-body diagrams, sketches of meshes, and long calculus equations (before I’d even taken calculus).  Some days, we’d walk to a café for a quick break at 5 pm — we’d both order a chocolate biscotti and a mint limeade.

For a while when Amanda and I were both living in the Bay Area, I'd work for NASA during the day and on the virtual unfolding algorithm at night.  I’d meet Amanda for dinner in downtown Mountain View — we’d split a lamb hummus plate and fit in an hour of gossip before we’d head to Peet's coffee to scribble ideas for the algorithm on loose sheets of printer paper.  After the coffeeshop closed, we'd work in a boba shop until 3 am, switching off coding on one laptop.

Once I started my freshman year at MIT, Amanda and I would collaborate virtually.  I’d head over to the [Wunsch Conservation Lab](https://libraries.mit.edu/distinctive-collections/wunsch-conservation-lab/), where Jana conducted her conservation work, for our virtual meetings.  Jana would always have an oreo cookie from [Flour Bakery](https://flourbakery.com/) waiting for me, along with an extensive collection of different teas.  Sometimes I’d stay afterwards to fold a letterpcket in whichever folding configuration Jana had been studying lately — a wonderful reprieve from the chaos of MIT undergrad life.  (Check out her relaxing folding tutorials on the [letterlocking youtube channel](https://www.youtube.com/channel/UCNPZ-f_IWDLz2S1hO027hRQ)!)

One of the highlights of our collaboration was the two trips the Unlocking History Research Group took to The Hague, Netherlands — close to where many of the historians on our team are based.  On the first visit, I flew straight to the Netherlands a few hours after my high school graduation.  We visited the Museum voor Communicatie (now [Sound and Vision the Hague](https://denhaag.beeldengeluid.nl/en/#)), where the Brienne trunk is on display, and for the first time I was able to hold the sealed letterpackets we had been working on virtually unfolding.

We submitted our technical paper to *Nature Communications* on March 13, 2020, two days after all students had to evacuate MIT due to COVID-19.  Around six months later, we received confirmation from the journal that our paper successfully passed through all phases of peer review and, after small revisions for formatting, would soon be published.  A few days later, I celebrated my 20th birthday in quarantine.

![Unfolding sequence]({{site.baseurl}}/images/05_unfolding-sequence-banner-db1538.png)
*Computer-generated unfolding sequence of sealed letter from the Brienne collection.*

Using our virtual unfolding method, we analyzed four letterpackets (including three unopened letterpackets) resulting in nearly complete reconstructions of their folded and flattened states.  Our methods are fully automatic, unbiased to scan orientation, and require no prior knowledge about a letterpacket's folded geometry.

Historians [Dr. Rebekah Ahrendt](https://www.uu.nl/medewerkers/RSAhrendt&t=0), [Dr. Nadine Akkerman](https://www.universiteitleiden.nl/en/staffmembers/nadine-akkerman#tab-1), and [Dr. David van der Linden](https://www.dcvanderlinden.com/) transcribed and translated one of the virtually unfolded letters with legible ink.  They placed the document within a rich historical context, allowing us insight into the lives of everyday people like Jacques Sennacques in 17th century Europe.  In addition, Jana and Daniel were able to verify their hypotheses about the folding configurations of the three unopened letterpackets against the 3D reconstructions and crease patterns output from the virtual unfolding algorithm.

Our results suggest that our approach may apply broadly to many types of historical texts (including letters, scrolls, and books), since our method can handle flat, curved, and sharply folded regions alike.  Other potential applications include analyses of developable surfaces, such as origami and sheet materials (e.g. plastics and metals) used in manufacturing.

Above all, we are excited to see the applications and improvements the next phase of researchers will bring to this study.  This is just the beginning of the project.  We have posted all of our code free and open-source on [Github](https://github.com/UnlockingHistory/virtual-unfolding) in the hopes others will continue to use and improve our methods, furthering the study of locked letters and other historical fields.

## Thank you.

This work was a team effort.  It could not have been done without the important contributions of every team member, and the support of countless more individuals and groups.

*Amanda* — Thank you for being an incredible role model, collaborator, and friend.  Working with you has made this experience ridiculously fun.  Thanks for taking me seriously and being my mentor — both professionally and personally — as I grew up with this project.

*Jana* — Thank you for your kindness, for always checking in on me, for the thoughtful gifts, and for being my “MIT mom.”

*Daniel* — Thank you for your eloquence, your humor, and your constant optimism.  You kept the group’s spirit afloat even in difficult moments.

*Erik* — Thank you for treating me as a peer.  Your easygoing and humble personality always brings a calm to the group.

*Neil* — Thank you for being the first to offer me this incredible opportunity, despite my age and inexperience.

*Kenny* — Thank you for being the first person to make me feel like I was a scientist.  I would not be here without you.

*Marty, Graham, David, Rebekah, Nadine, David* — Thank you for your incredible patience and generosity.  Your stimulating discussion and constructive comments were invaluable.

Thank you to my parents and my sister — for comic relief, for proofreading emails, and for your genetic material.

And lastly, thank you to my living group at MIT — the Burton Third Bombers — for giving me confidence and chaos.

# Press

* [MIT News](https://news.mit.edu/2021/researchers-virtually-open-sealed-historic-letters-0302)
* [New York Times](https://www.nytimes.com/2021/03/02/science/locked-letters-unfolding.html)
* [NPR](https://www.npr.org/2021/03/02/972607811/reading-a-letter-thats-been-sealed-for-more-than-300-years-without-opening-it)
* [Scientific American](https://www.scientificamerican.com/article/algorithm-virtually-unfolds-a-historical-letter-without-unsealing-it/)
* [Wall Street Journal](https://www.wsj.com/articles/a-letter-sealed-for-centuries-has-been-readwithout-even-opening-it-11614679203?mod=hp_listc_pos2)
* [CNN](https://www.cnn.com/style/article/opening-sealed-letters-study-scn/index.html)
* [The Guardian](https://www.theguardian.com/books/2021/mar/02/researchers-read-sealed-17th-century-letter-without-opening-virtual-unfolding-x-ray)
* [WIRED](https://www.wired.com/story/sleuths-read-old-booby-trapped-letters-without-opening-them/)
* [New Scientist](http://ct.moreover.com/?a=44360430363&p=1pl&v=1&x=y6-uIBUlCwMN-tsZ-9O2Mw)
* [The Economist](https://www.economist.com/science-and-technology/2021/03/03/cracking-the-security-on-a-trove-of-17th-century-letters)
