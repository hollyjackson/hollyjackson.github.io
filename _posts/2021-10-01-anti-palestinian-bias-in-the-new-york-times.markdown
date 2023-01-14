---
layout: post
title:  Anti-Palestinian Bias in <i>The New York Times</i>
description: A quantitative study of anti-Palestinian bias in the paper of the record.
date:   2021-10-01 00:00:00 +0000
image:  '/images/public_domain_mark_new_york_times_image.jpg'
tags:   [MIT, interdisciplinary, human rights]
---

### During the Spring 2021 semester at MIT, I analyzed over 33,000 *New York Times* articles on Palestine and Israel using machine learning methods.  In this study, I prove a history of disproportionate bias against Palestinians in *The New York Times*.

This study is dedicated to the people of Palestine and their struggle for liberation. This work would not be possible without the underappreciated and unrewarded (often punished) labor of countless Palestinians, who have historically called out the *New York Times* and other media outlets that misrepresent their struggle.

My complete research paper can be accessed [here](http://web.mit.edu/hjackson/www/The_NYT_Distorts_the_Palestinian_Struggle.pdf).  All associated code is posted free and open-source on [Github](https://github.com/hollyjackson/NYT_Content_Analysis).  In addition, feel free to check out my [Twitter](https://twitter.com/h_jackson_/status/1395406943192297481?s=20) where I have posted these links along with a number of other resources.  Below, I have included a brief summary of my methods and findings.

# Summary

I centered my analysis on two important periods in the modern history of the Palestinian struggle – the First and Second Intifadas – both marked by periods of rapid change and an increase in global conversation about Palestine and Israel.  Using state-of-the-art natural language processing toolkits as well as a regression model with over 90% accuracy based on a carefully-validated word bank, I analyzed *Times* articles for __(1)__ their use of active/passive voice and __(2)__ the objectivity, tone, and violent sentiment of the language used.  I followed up my quantitative analysis with a qualitative validation step, analyzing biased articles in each period.  In conjunction with historical context, I show that anti-Palestinian bias persisted disproportionately in the *New York Times* during both periods and, in fact, worsened from the First Intifada to the Second.  Finally, I connect my findings to current events in Palestine and challenge readers to be critical of the sources they reference.  My research serves as a case study in the scope of a larger problem of anti-Palestinian bias in American news coverage.  

# Content Analysis Methods

Content analysis allows researchers to analyze larger quantities of material more efficiently [__[Grimmer et al. 2013]__](#grimmer-et-al-2013).  Combined with a supporting qualitative analysis, it allows breadth in my bias analysis of the *New York Times*.  My analysis identifies two key features of *New York Times* articles about Palestine and Israel.  First, I identify whether actions by Israeli and Palestinian groups are being described in the active and passive voice.  For every verb, I identify the perpetrator and recipient of the action (i.e.  whether they were a Palestinian or Israeli group or individual).  An analysis of voice is common in other studies of bias because the passive voice, which is often discouraged in formal writing, allows the writer to de-emphasize or entirely omit the perpetrator of an action in a sentence __[[Frazer and Miller 2008](#frazer-and-miller-2008), [Sögüt 2018](#sögüt-2018), [Kazenin 2008](#kazenin-2008)]__.  Second, I classify the objectivity and tone of language – especially that used to report on violence – based on pre-trained natural language processing (NLP) toolkits as well as my own regression model based on a carefully-validated word bank.

While content analysis can be useful, it is never meant to be a substitute for qualitative research.  Experts in content analysis expound that the results of any quantitative analysis must be validated with statistics and qualitative measures since they can otherwise be misleading [__[Grimmer et al. 2013, pp.4—5]__](#grimmer-et-al-2013).  Some studies have noted bias in content analysis studies of Palestine and Israel – since selective methods and unsound analyses can be used to manipulate results in anyone’s favor [__[Kressel 1987]__](#kressel-1987).  Finally, it is important to contextualize that pre-trained natural language processing models do not provide unbiased metrics.  Since they are trained on a corpus of texts that have Orientalist sentiments, the classifiers themselves carry this same anti-Arab, anti-Muslim bias.  Studies have found persistent sexist, racist, and Islamophobic bias in highly-used natural language processing toolkits __[[Abid et al. 2021](#abid-et-al-2021), [Bolukbasi et al. 2016](#bolukbasi-et-al-2016), [Bordia and Bowman 2019](#bordia-and-bowman-2019), [Lu et al. 2020](#lu-et-al-2020), [Nadeem et al. 2020](#nadeem-et-al-2020), [Shearer et al. 2019](#shearer-et-al-2019), [Sheng 2019](#sheng-2019)]__.  I attempt to reduce the influence of engrained bias in available models in my study.  However, these steps alone cannot mitigate bias in these models.  As a result, all following content analysis results should be considered in the context of anti-Palestinian bias in artificial intelligence tools, indicating anti-Palestinian bias is likely deeper than these results are capable of measuring.

# Content Analysis Results

## The First Intifada

The *New York Times* published over 16,000 articles related to Palestine and/or Israel during the First Intifada.  Of these, around 40% reference Palestinian groups or individuals, while around 93% reference Israeli groups or individuals.  According to the results of the logistic regression, 11.9% of all references to Palestinians used violent language, while only 5.9% of all references to Israelis used violent language.  [__Figure 1__](#figure-1) shows how the percentage of references that used violent language in the *New York Times* evolved over the First Intifada.  At the beginning of the period, violent language was used significantly more in references to Palestinians than references to Israelis.  These statistics became slightly closer towards the end of the Intifada.  It is important to note that Israeli violence was actually significantly higher than Palestinian violence during this period __[[Khalidi 2021](#khalidi-2021), [Beinin and Hajjar 2014](#beinin-and-hajjar-2014)]__, so equality of metric does not mean equity of representation in this case.

![Figure 1]({{site.baseurl}}/images/nyt-paper/both_violence_first_intifada.png)
*__Figure 1.__  Percent of references to Palestinians and Israelis that used violent language during the First Intifada.*

The *Times* reports referred to Palestinians in the passive voice 15.7% of the time.  On the other hand, reports referred to Israelis using the passive voice only 6.4% of the time.  This means the *Times* referred to Palestinians in the passive voice more than twice as often as they did Israelis.  [__Figure 2__](#figure-2) shows the tone and objectivity scores of these passive voice references.  In addition to being referenced more frequently in the passive voice, references to Palestinians were also generally more negative in tone, and references to Israelis in the passive voice were generally more objective.  The use of passive voice de-emphasizes or hides those perpetrating such negative action on Palestinians; this has the rhetorical effect of minimizing the responsibility of Israeli aggressors in causing Palestinian suffering.

![Figure 2]({{site.baseurl}}/images/nyt-paper/passive_pos_obj_first_intifada.png)
*__Figure 2.__  Tone (left) and objectivity (right) of passive voice references to Palestinians and Israelis during the First Intifada.  Positive values indicate positive tone, negative values indicate negative tone, and zero values indicate neutrality.  More positive objectivity values indicate higher objectivity (i.e. less presence of opinion) in the reference.*

## The Second Intifada

The *New York Times* published over 17,000 articles related to Palestine and/or Israel during the Second Intifada.  Of these, around 49% reference Palestinian groups or individuals, while around 93% reference Israeli groups or individuals.  According to the results of the logistic regression, 15.9% of all references to Palestinians used violent language, while 11.7% of all references to Israelis used violent language.  [__Figure 3__](#figure-3) shows how the percentage of references that used violent language in the *New York Times* evolved over the Second Intifada.  The *Times* referenced Palestinians using violent language far more often than they did Israelis throughout the entire period.  

![Figure 3]({{site.baseurl}}/images/nyt-paper/both_violence_second_intifada.png)
*__Figure 3.__  Percent of references to Palestinians and Israelis that used violent language during the Second Intifada.*

While both percentages decreased from the First Intifada, Palestinians were still referred to using the passive voice twice as often as Israelis (12.6% and 6.3%, respectively).  References to Israelis in the passive voice had more positive tone and were generally marked to be more objective (see [__Figure 4__](#figure-4)).

![Figure 4]({{site.baseurl}}/images/nyt-paper/passive_pos_obj_second_intifada.png)
*__Figure 4.__  Tone (left) and objectivity (right) of passive voice references to Palestinians and Israelis during the Second Intifada.  Positive values indicate positive tone, negative values indicate negative tone, and zero values indicate neutrality.  More positive objectivity values indicate higher objectivity (i.e.  less presence of opinion) in the reference.*

# Implications 

This study was released during May 2021.  Starting May 8, 2021, Israeli forces raided the Al-Aqsa mosque compound and forcibly dispossessed Palestinian families in Sheikh Jarrah – a predominantly Palestinian neighborhood in East Jerusalem [__[Bishara 2021]__](#bishara-2021).  In addition, Israel has repeatedly bombed the Gaza Strip.  Overall, fifty-five Israeli air raids have been perpetrated against Palestinian – destroying business, media offices, and residences [Uras and Siddiqui 2021].  As of May 16, 2021, almost 200 Palestinians have been killed as a result of these attacks.  Uras and Siddiqui of *Al Jazeera* report, “At least 192 people, including 58 children and 34 women, have been killed in the Gaza Strip since the latest violence began a week ago…Three Palestinian children [are] injured every hour on average” [__[Uras and Siddiqui 2021]__](#uras-and-siddiqui-2021).  In addition, over 30,000 Palestinians have been displaced by the Israeli attacks.  Meanwhile, ten Israelis have died, two of which were children [__[Uras and Siddiqui 2021]__](#uras-and-siddiqui-2021).

In contrast to the true nature of the events, headlines from the *New York Times* on the raids and airstrikes are marked by ambiguity and bias.  Patrick Kingsley and Isabel Kershner write, “More Than 30 Dead in Gaza and Israel as Fighting Quickly Escalates,” on May 11, 2021 [__[Kingsley and Kershner 2021]__](#kingsley-and-kershner-2021).  Their article fails to clarify this included 28 Palestinians and two Israelis [__[Akram and Federman 2021]__](#akram-and-federman-2021).  Most headlines refer to recent tragedies as the “Israel-Hamas Fight” or “Gaza Conflict” or “Israeli-Palestinian Strife” – propagating a false narrative that both sides incite equivalent violence or withstand equivalent strife __[[Abuheweila and Kingsley 2021](#abuheweila-and-kingsley-2021), [Associated Press 2021](#associated-press-2021), [Yee 2021](#yee-2021)]__.  While the *Times* failed to highlight the deaths of fifty-eight Palestinian children, they made sure to highlight one of the two Israeli children who were killed in a headline: “Gaza Rocket Finds a Rare Gap in Israeli Armor, and a Boy Is Killed” [__[Kershner 2021]__](#kershner-2021).  These are only a few examples of bias in recent *NYT* reports.  As violence continues to unfold, it is more important than ever to be critical of the sources we reference.

Palestinian Foreign Minister Riyad al-Maliki said in a recent interview, “there are no words to describe the horrors our people are enduring…Israel is killing us” [__[Al Jazeera 2021]__](#al-jazeera-2021).  Meanwhile, the *New York Times* reporting upholds the oppressor and spreads a false perception of the situation.

### In 2021, the New York Times continues its legacy of Palestinian erasure.

# Resources 

Read [DecolonizePalestine.com](https://decolonizepalestine.com) for a user-friendly Palestine 101.
Follow Palestinian-run, de-centralized news sources such as the IMEU (__@theIMEU__), Eye on Palestine (__@EyeonPalestine__), & the Palestinian Youth Movement (__@palyouthmvmt__) on Instagram & Twitter.
As violence continues to unfold, it is more important than ever to be critical of the sources we reference. We need to listen to Palestinian activists like Sumaya Awad (__@sumayaawad__), Mohammed El-Kurd (__@m7mdkurd__), Muna El-Kurd (__@kurd_muna__), and Noura Erakat (__@4noura__), to name only a few incredible people.

A massive thank you to MIT professors Richard Samuels, who provided insightful feedback throughout this study, and Richard Nielsen, who provided me with a number of content analysis resources.

# References

### [Abid *et al.* 2021]
Abid, Abubakar, Maheen Farooqi, and James Zou. Persistent Anti-Muslim Bias in Large Language Models *arXiv*, 2021. arXiv preprint, 2101.05783.

### [Abuheweila and Kingsley 2021]
Abuheweila, Iyad, and Patrick Kingsley. Grief Mounts as Efforts to Ease Israel-Hamas Fight Falter. *New York Times*, May 16, 2021.

### [Akram and Federman 2021]
Akram, Fares, and Josef Federman. Violence in Gaza Leaves 28 Palestinians, 2 Israelis Dead. *PBS*, May 11, 2021

### [Al Jazeera 2021]
Israel Committing War Crimes in Gaza, Palestinian FM Tells UN. *Al Jazeera*, May 16, 2021

### [Associated Press 2021]
Associated Press. 'Fighting Must Stop': U.N. Holds First Public Meeting on Gaza Conflict. *New York Times*, May 16, 2021.

### [Beinin and Hajjar 2014]
Beinin, Joel, and Lisa Hajjar. Palestine, Israel and the Arab-Israeli Conflict: A Primer. Washington, DC: Middle East Research and Information Project, 2014.

### [Bishara 2021]
Bishara, Marwan. Jerusalem, the Unfolding Tragedy. *Al Jazeera*, May 11, 2021.

### [Bolukbasi *et al.* 2016]
Bolukbasi, Tolga, Kai-Wei Chang, James Zou, Venkatesh Saligrama, and Adam T. Kalai. Man is to Computer Programmer as Woman is to Homemaker? Debiasing Word Embeddings. In *Advances in Neural Information Processing Systems*, edited by D. Lee, M. Sugiyama, U. Luxburg, I. Guyon and R. Garnett. *Curran Associates, Inc.* 29, (2016).

### [Bordia and Bowman 2019]
Bordia, Shikha and Samuel R. Bowman. Identifying and Reducing Gender Bias in Word-Level Language Models. In *Proceedings of the 2019 Conference of the North American Chapter of the Association for Computational Linguistics: Student Research Workshop, Association for Computational Linguistics*, (2019): 7–15. arXiv preprint, 1904.03035. [https://www.aclweb.org/anthology/N19-3002](https://www.aclweb.org/anthology/N19-3002). 

### [Frazer and Miller 2008]
Frazer, Alexandra K., and Michelle D. Miller. Double Standards in Sentence Structure. *Journal of Language and Social Psychology* 28, no. 1 (2008): 62–71. [https://doi.org/10.1177/0261927x08325883](https://doi.org/10.1177/0261927x08325883). 

### [Grimmer *et al.* 2013] 
Grimmer, Justin, and Brandon M. Stewart. Text as Data: The Promise and Pitfalls of Automatic Content Analysis Methods for Political Texts. *Political Analysis* 21, no. 3 (2013): 267–97. Accessed May 18, 2021. [http://www.jstor.org/stable/24572662](http://www.jstor.org/stable/24572662). 

### [Kazenin 2008]
Kazenin, Konstantin I. 67. The passive voice. In *2. Halbband Language Typology and Language Universals 2.Teilband*, 899–916. Berlin, Boston: De Gruyter Mouton, 2008. [https://doi.org/10.1515/9783110194265-004](https://doi.org/10.1515/9783110194265-004). 

### [Kershner 2021]
Kershner, Isabel. Gaza Rocket Finds a Rare Gap in Israeli Armor, and a Boy Is Killed. *New York Times*, May 14, 2021.

### [Khalidi 2021]
Khalidi, Rashid. *The Hundred Years’ War on Palestine: a History of Settler Colonialism and Resistance*, 1917-2017. New York: Picador, 2021.

### [Kingsley and Kershner 2021]
Kingsley, Patrick, and Isabel Kershner. More Than 30 Dead in Gaza and Israel as Fighting Quickly Escalates. *New York Times*, May 11, 2021.

### [Kressel 1987]
Kressel, Neil J. Biased Judgments of Media Bias: A Case Study of the Arab-Israeli Dispute. *Political Psychology* 8, no. 2 (1987): 211–27. Accessed May 2, 2021. doi:10.2307/3791301.

### [Lu et al. 2020]
Lu, Kaiji, Piotr Mardziel, Fangjing Wu, Preetam Amancharla, and Anupam Datta. Gender Bias in Neural Natural Language Processing. In *Logic, Language, and Security: Essays Dedicated to Andre Scedrov on the Occasion of His 65th Birthday*, edited by Vivek Nigam, Tajana Ban Kirigin, Carolyn Talcott, Joshua Guttman, Stepan Kuznetsov, Boon Thau Loo, and Mitsuhiro Okada. *Springer International Publishing*, (2020): 189–202. [https://doi.org/10.1007/978-3-030-62077-6_14](https://doi.org/10.1007/978-3-030-62077-6_14).

### [Nadeem et al. 2020]
Nadeem, Moin, Anna Bethke and Siva Reddy. StereoSet: Measuring stereotypical bias in pretrained language models. *CoRR*, (2020). [https://arxiv.org/abs/2004.09456](https://arxiv.org/abs/2004.09456). 

### [Shearer et al. 2019]
Shearer, Eleanor, Sabrina Martin, André Petherman, and Richard Stirling. Racial Bias in Natural Language Processing, 2019.

### [Sheng 2019]
Sheng, Emily, Kai-Wei Chang, Premkumar Natarajan, and Nanyun Peng. The Woman Worked as a Babysitter: On Biases in Language Generation. *EMNLP (short)*, 2019

### [Sögüt 2018]
Sögüt, Sibel. Ideology in the News through Active, Passive Sentences and Nominalization: A Study on the Terrorist Attack in Ankara Reported in British and American Newspapers. *Journal of Language and Linguistic Studies* 14, no. 1 (2018): 162–77.

### [Uras and Siddiqui 2021]
Uras, Umut, and Usaid Siddiqui. Gaza Death Toll Nears 200 amid Surge of Israeli Raids. *Al Jazeera*, May 16, 2021.

### [Yee 2021]
Yee, Vivian. Israeli-Palestinian Strife Widens as Frantic Calls for Calm Go Unheeded. *New York Times*, May 14, 2021.

