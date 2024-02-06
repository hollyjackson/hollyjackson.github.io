---
layout: post
title:  Anti-Palestinian Bias in US Media
description: Quantitative studies of anti-Palestinian bias in mainstream American news.
date:   2021-10-01 00:00:00 +0000
image:  '/images/nyt_chart.jpg'
tags:   [MIT, interdisciplinary, human rights]
---


I have completed two major quantitative studies of anti-Palestinian bias in US media.

* **[Analysis of Israeli Genocide of Gaza since October 7, 2023](#analysis-of-israeli-genocide-of-gaza-since-october-7-2023)**: In October 2023, I analyzed anti-Palestinian media bias in thousands of articles from the _The New York Times_, _The Washington Post_, and _The Wall Street Journal_ published in the first weeks of the Israeli genocide of Gaza that began after the Hamas-led invasion on October 7, 2023.  This work was posted to Instagram in a collaboration with [Mona Chalabi](https://monachalabi.com/), a Pultizer-prize-winning writer and illustrator who designed visual representations of the data. My code is available free and open-source on [Github](https://github.com/hollyjackson/casualty_mentions_nyt), along with a comprehensive write-up of the methodologies.  So far, this work has been re-purposed for other investigations, including analyses of anti-Palestinian bias in [major Canadian newspapers](https://breachmedia.ca/palestinian-deaths-canadian-newspapers-data/) and in [BBC news coverage](https://www.instagram.com/monachalabi/p/C1Zv_gMu3AI/?img_index=1) since October 7, 2023.

* **[Analysis of First and Second Intifadas](#analysis-of-first-and-second-intifadas)**: In May 2021, I analyzed over 33,000 *New York Times* articles on Palestine and Israel using machine learning methods.  This work provides a methodologically novel, large-scale proof of historical bias against Palestine in *The New York Times*.  My complete research paper, [linked here](https://journals.sagepub.com/doi/full/10.1177/17506352231178148), is published with _Media, War & Conflict_. A pre-print of the study is also [posted here](](http://web.mit.edu/hjackson/www/The_NYT_Distorts_the_Palestinian_Struggle.pdf)). All associated code is posted free and open-source on [Github](https://github.com/hollyjackson/NYT_Content_Analysis). The study has also been translated into Arabic by Farouk Kouider Moussaoui and is available in [the Algerian Journal of Political Science and International Relations](https://www.asjp.cerist.dz/en/article/229164).


Below, I have included summaries of each investigation.

# Analysis of Israeli Genocide of Gaza since October 7, 2023

In this study, I aimed to provide data on mentions of Palestinian and Israeli deaths in three mainstream US newspapers (_The New York Times_, _The Washington Post_, and _The Wall Street Journal_) in a few-week period after October 7, 2023. I compared this data to up-to-date casualty counts from the United Nations Office for the Coordination of Humanitarian Affairs (OCHA).  This project was completed live in the first two weeks of the Israeli attacks to keep up with the urgency of events.  My code is available free and open-source on [Github](https://github.com/hollyjackson/casualty_mentions_nyt), along with a comprehensive write-up of the methodologies.

All illustrations of the data were designed and executed by [Mona Chalabi](https://monachalabi.com/), a Pultizer-prize-winning writer and illustrator.  Snapshots from this research were posted on Mona's Instagram at the following links:
* [Post](https://www.instagram.com/p/Cy8iWSfukzE/) by Mona Chalabi ([@monachalabi](https://www.instagram.com/monachalabi/)) on October 28, 2023.
* [Post](https://www.instagram.com/p/Cyl9HR7O4ap/) by Mona Chalabi ([@monachalabi](https://www.instagram.com/monachalabi/)) on October 19, 2023.

Below, I provide an overview of the entire pipeline to produce the results.

There are four main steps:

1. I filter the source data, e.g. articles from the three newspapers, for relevant content.
2. I pre-process all of the article data using a popular and reliable natural language processing pipeline: [Stanford CoreNLP](https://stanfordnlp.github.io/CoreNLP/). I use Stanford CoreNLP to parse the grammatical structure of the sentences in the articles.
3. I use the results from pre-processing to automatically filter any sentences related to death. Then, I manually tag whether the victim in each sentence is Palestinian, Israeli, both (i.e. for multiple victims), or neither (i.e. something unrelated).
4. Finally, I compare the results to cumulative casualty counts from the United Nations Office for the Coordination of Humanitarian Affairs (OCHA).

## Dataset

All article data from these newspapers was collected and analyzed through ProQuest TDM (Text and Data Mining) Studio. ProQuest is a collection of many databases that provide access to thousands of journals, magazines, newspapers, dissertations, and other publications. TDM Studio is a text and data mining solution for research, teaching and learning that allows researchers to analyze ProQuest's collections.

Through ProQuest TDM Studio, I have acces to all print and online articles in The New York Times, The Washington Post, The Wall Street Journal, and more. Unfortunately, due to most newspapers' terms and conditions on data scraping, the original source data cannot be shared from ProQuest TDM Studio, so I do not have the rights to upload it to this repository. However, all article data can be downloaded or copied manually from the respective newspapers' website.

I produced a number of datasets for this research:

1. I identified all articles posted by The New York Times between October 7, 2023, and October 18, 2023, that contained any of the keywords: Palestine, Israel, Palestinian, or Israeli. In total, there were 991 articles that matches these search criteria. All articles were downloaded as of 6pm ET on October 18.
2. I identified all articled posted by The New York Times between October 7, 2023, and October 22, 2023, hat contained any of the keywords: Palestine, Israel, Palestinian, or Israeli. In total, there were 1325 articles that matches these search criteria. All articles were downloaded as of 5pm ET on October 22.
3. I identified all articled posted by The Washington Post between October 7, 2023, and October 22, 2023, hat contained any of the keywords: Palestine, Israel, Palestinian, or Israeli. In total, there were 678 articles that matches these search criteria. All articles were downloaded as of 5pm ET on October 22.
4. I identified all articled posted by The Wall Street Journal between October 7, 2023, and October 22, 2023, hat contained any of the keywords: Palestine, Israel, Palestinian, or Israeli. In total, there were 669 articles that matches these search criteria. All articles were downloaded as of 5pm ET on October 22.

These three newspapers (_New York Times_, _Washington Post_, and _Wall Street Journal_) were chosen for a number of reasons. First, multiple online sources listed them among the most read newspapers in the US (see [this article from _Press Gazette_](https://pressgazette.co.uk/media-audience-and-business-data/media_metrics/top-25-us-newspaper-circulations-down-march-2023/) which ranks the _Wall Street Journal_, _New York Times_, and _Washington Post_ as the US's most-circulated newspapers as of 2023 and [this 2021 report from Pew Research](https://www.pewresearch.org/journalism/fact-sheet/newspapers/) which refers to the _New York Times_, _Wall Street Journal_, and )Washington Post_ as "three of the highest-circulation daily papers in the U.S."). Second, I was limited by dataset availability (I do not have access to sources like CNN and MSN). Despite this, there are many mainstream newspapers that would be critical to investigate in addition (such as _USA Today_ and the _LA Times_).

## Data Pre-Processing

For each article of the pre-filtered articles, I applied Stanford CoreNLP to derive linguistic annotations for text, including token and sentence boundaries, parts of speech, named entities, and dependency and constituency parses.  After running the data processing script, I use Java (v.1.8) to process all the articles with Stanford CoreNLP.  The scripts and relevant commands are available in the [Github](https://github.com/hollyjackson/casualty_mentions_nyt).

## Automated and Manual Tagging

Using the linguistic annotations from Stanford CoreNLP, I automatically extract all sentences with verbs related to death using a pre-compiled word bank. I built a simple user interface that presents each sentence to the annotator and asks them to identify the victim described in the sentence as either Palestinian, Israeli, both (if the sentence contains multiple victims), or none (if the sentence is unrelated to Palestine and Israel).

The data is manually tagged according to the following general rules:

* The victim must be Palestinian or Israeli or the death otherwise occured in the West Bank, Gaza, or Israel ('48 lands)
* The mention cannot be speculative (i.e. "He may die") and must have already happened
* The mention must refer to a fatality event that has happened on or since 10/7/23
* Injuries do not count

There is also an option for 'Next', if the sentence contains insufficient details for classification. If the annotator selects 'Next', the sentence is shown in context with the three preceding and three following sentences. If there is still insufficient details, the annotator can select 'Next' one more time to display the entire text of the article.

I repeated this process for multiple datasets and produced files of the manually-tagged results which are available in the [Github](https://github.com/hollyjackson/casualty_mentions_nyt).

## Comparisons to UN fatality data

I compiled casualty data for Israelis and Palestinians from October 7, 2023, to October 22, 2023, from the United Nations Office for the Coordination of Humanitarian Affairs (OCHA). This data is available in the [Github](https://github.com/hollyjackson/casualty_mentions_nyt).

This data can be used to produce a number of interesting metrics. Fatality counts can be compared side-by-side to plots of mentions of Palestinian and Israeli deaths in each newspaper In addition, dividing the number of fatalities by the number of mentions of deaths can produce a ratio of deaths-per-mention, i.e. how many people die per each mention in a newspaper.

![Ocha results]({{site.baseurl}}/images/october-2023-plots/cumulative_deaths_ocha_oct7_to_oct22.jpg)

## Results

### _The New York Times_

![NYT results]({{site.baseurl}}/images/october-2023-plots/mentions_nyt_oct7_to_oct22.jpg)


_The New York Times_ has consistently mentioned Israeli deaths more often than Palestinian deaths overall from 10/7 to 10/22. Israeli deaths have been mentioned the most on 10/12 and 10/13, even though Israeli deaths plateaued since 10/12 and Palestinian deaths have skyrocketed. Coverage of Israeli deaths increased as Palestinian deaths began to skyrocket. On average, about four Palestinians died per each mention of Palestinian deaths in _The New York Times_. On the other hand, Israeli deaths were matched almost exactly one-for-one by the _Times_.

Please read the notes below on this data -- it’s crucial context.

* In addition to the bias in sheer volume of coverage, there was a huge difference in the language used. The word “slaughter” was used 53 times in these articles since 10/7 to describe the deaths of Israelis and zero times to describe the death of Palestinians. The word “massacre” shows up 24 times in reference to Israelis and once in reference to Palestinians in the tagged sentences.
* The articles rarely mention the names of Palestinians who die — instead using terms like “mourner”, “resident”, “assailant” or “militant”.
* In one article, a murdered Palestinian was simply referred to as the “bloodied corpse” of a presumed "terrorist". This is still counted as a mention of a Palestinian death in the data despite the framing. Israelis who died were often mentioned individually and by name with reference to their families and professions which humanized them in comparison to anonymous Palestinians.

### _The Washington Post_

![WP results]({{site.baseurl}}/images/october-2023-plots/mentions_wp_oct7_to_oct22.jpg)

_The Washington Post_ has consistently mentioned Israeli deaths more often than Palestinian deaths overall from 10/7 to 10/22. Israeli deaths have been mentioned the most on 10/12 and 10/13, even though Israeli deaths plateaued since 10/12 and Palestinian deaths have skyrocketed. On average, about nine Palestinians died per mention of Palestinian deaths in _The Washington Post_. On the other hand, two Israelis died per mention of Israeli deaths in the _Post_.

### _The Wall Street Journal_

![WSJ results]({{site.baseurl}}/images/october-2023-plots/mentions_wsj_oct7_to_oct22.jpg)

_The Wall Street Journal_ has consistently mentioned Israeli deaths more often than Palestinian deaths overall from 10/7 to 10/22. Israeli deaths have been mentioned the most on 10/12 and 10/13, even though Israeli deaths plateaued since 10/12 and Palestinian deaths have skyrocketed. On average, about 17 Palestinians died per mention of Palestinian deaths in _The Wall Street Journal_. On the other hand, three Israelis died per mention of Israeli deaths in the _WSJ_.

### Visualizations by Mona Chalabi

The data shown above has been visualized and posted to Instagram by [Mona Chalabi](https://monachalabi.com/), a Pultizer-prize-winning writer and illustrator.  I have included some of Mona's visualizations below.  The original illustrations were posted on Mona's Instagram at the following links:
* [Post](https://www.instagram.com/p/Cy8iWSfukzE/) by Mona Chalabi (@monachalabi) on October 28, 2023.
* [Post](https://www.instagram.com/p/Cyl9HR7O4ap/) by Mona Chalabi (@monachalabi) on October 19, 2023.

![Mona NYT illustration]({{site.baseurl}}/images/october-2023-plots/mona_nyt_illustration.jpg)

![Mona WP illustration]({{site.baseurl}}/images/october-2023-plots/mona_wp_illustration.jpg)

![Mona WSJ illustration]({{site.baseurl}}/images/october-2023-plots/mona_wsj_illustration.jpg)



## Potential Sources of Bias and Error

During data collection, I used pre-trained natural languag processing models to parse the grammatical structure of all sentences in each article. It is important to contextualize that pre-trained natural language processing models do not provide unbiased metrics. Since they are trained on a corpus of texts that have Orientalist sentiments, the classifiers themselves carry this same anti-Arab, anti-Muslim bias. Studies have found persistent sexist, racist, and Islamophobic bias in highly-used natural language processing toolkits __[[Abid et al. 2021](#abid-et-al-2021), [Bolukbasi et al. 2016](#bolukbasi-et-al-2016), [Bordia and Bowman 2019](#bordia-and-bowman-2019), [Lu et al. 2020](#lu-et-al-2020), [Nadeem et al. 2020](#nadeem-et-al-2020), [Shearer et al. 2019](#shearer-et-al-2019), [Sheng 2019](#sheng-2019)]__. As a result, the results should be considered in the context of anti-Palestinian bias in artificial intelligence tools, indicating anti-Palestinian bias is likely deeper than these results are capable of measuring.

In addition, manually tagging data can be subjective and can of course suffer from human error. To minimize subjectivity, the data was manually tagged according ro a fixed set of rules.



# Analysis of First and Second Intifadas 

During the Spring 2021 semester at MIT, I analyzed over 33,000 *New York Times* articles on Palestine and Israel using machine learning methods. In this study, I provide a methodologically novel, large-scale proof of historical bias against Palestine in *The New York Times*.

This study is dedicated to the people of Palestine and their struggle for liberation. This work would not be possible without the underappreciated and unrewarded (often punished) labor of countless Palestinians, who have historically called out *The New York Times* and other media outlets that misrepresent their struggle.

My complete research paper, [linked here](https://journals.sagepub.com/doi/full/10.1177/17506352231178148), is published with _Media, War & Conflict_. A pre-print of the study is also [posted here](](http://web.mit.edu/hjackson/www/The_NYT_Distorts_the_Palestinian_Struggle.pdf)). All associated code is posted free and open-source on [Github](https://github.com/hollyjackson/NYT_Content_Analysis). The study has also been translated into Arabic by Farouk Kouider Moussaoui and is available in [the Algerian Journal of Political Science and International Relations](https://www.asjp.cerist.dz/en/article/229164). Below, I have included a brief summary of my methods and findings.

## Summary

In this study, I provide a methodologically novel, large-scale proof of historical bias against Palestine in a newspaper of international importance — *The New York Times* — during the First and Second Palestinian Intifadas. Using state-of-the-art natural language processing toolkits as well as a regression model with over 90% accuracy based on a carefully-validated word bank, I analyze over 33,000 NYT articles for __(1)__ their use of active/passive voice and __(2)__ the objectivity, tone, and violent sentiment of the language used. I follow up my quantitative analysis with a qualitative validation step, analyzing biased articles in each period. In conjunction with historical context, I show that anti-Palestinian bias persisted disproportionately in *The New York Times* during both periods and, in fact, worsened from the First Intifada to the Second. This work builds on a history of qualitative research on anti-Palestinian bias in the American media and attempts to provide a methodological contribution that encourages conversation between quantitative and qualitative metrics of bias.

I centered my analysis on two important periods in the modern history of the Palestinian struggle – the First and Second Intifadas – both marked by periods of rapid change and an increase in global conversation about Palestine and Israel. Using state-of-the-art natural language processing toolkits as well as a regression model with over 90% accuracy based on a carefully-validated word bank, I analyzed *Times* articles for __(1)__ their use of active/passive voice and __(2)__ the objectivity, tone, and violent sentiment of the language used. I followed up my quantitative analysis with a qualitative validation step, analyzing biased articles in each period. In conjunction with historical context, I show that anti-Palestinian bias persisted disproportionately in the *New York Times* during both periods and, in fact, worsened from the First Intifada to the Second. Finally, I connect my findings to current events in Palestine and challenge readers to be critical of the sources they reference. My research serves as a case study in the scope of a larger problem of anti-Palestinian bias in American news coverage.

## Content Analysis Methods

Content analysis allows researchers to analyze larger quantities of material more efficiently [__[Grimmer et al. 2013]__](#grimmer-et-al-2013). Combined with a supporting qualitative analysis, it allows breadth in my bias analysis of the *New York Times*. My analysis identifies two key features of *New York Times* articles about Palestine and Israel. First, I identify whether actions by Israeli and Palestinian groups are being described in the active and passive voice. For every verb, I identify the perpetrator and recipient of the action (i.e. whether they were a Palestinian or Israeli group or individual). An analysis of voice is common in other studies of bias because the passive voice, which is often discouraged in formal writing, allows the writer to de-emphasize or entirely omit the perpetrator of an action in a sentence __[[Frazer and Miller 2008](#frazer-and-miller-2008), [Sögüt 2018](#sögüt-2018), [Kazenin 2008](#kazenin-2008)]__. Second, I classify the objectivity and tone of language – especially that used to report on violence – based on pre-trained natural language processing (NLP) toolkits as well as my own regression model based on a carefully-validated word bank.

While content analysis can be useful, it is never meant to be a substitute for qualitative research. Experts in content analysis expound that the results of any quantitative analysis must be validated with statistics and qualitative measures since they can otherwise be misleading [__[Grimmer et al. 2013, pp.4—5]__](#grimmer-et-al-2013). Some studies have noted bias in content analysis studies of Palestine and Israel – since selective methods and unsound analyses can be used to manipulate results in anyone’s favor [__[Kressel 1987]__](#kressel-1987). Finally, it is important to contextualize that pre-trained natural language processing models do not provide unbiased metrics. Since they are trained on a corpus of texts that have Orientalist sentiments, the classifiers themselves carry this same anti-Arab, anti-Muslim bias. Studies have found persistent sexist, racist, and Islamophobic bias in highly-used natural language processing toolkits __[[Abid et al. 2021](#abid-et-al-2021), [Bolukbasi et al. 2016](#bolukbasi-et-al-2016), [Bordia and Bowman 2019](#bordia-and-bowman-2019), [Lu et al. 2020](#lu-et-al-2020), [Nadeem et al. 2020](#nadeem-et-al-2020), [Shearer et al. 2019](#shearer-et-al-2019), [Sheng 2019](#sheng-2019)]__. I attempt to reduce the influence of engrained bias in available models in my study. However, these steps alone cannot mitigate bias in these models. As a result, all following content analysis results should be considered in the context of anti-Palestinian bias in artificial intelligence tools, indicating anti-Palestinian bias is likely deeper than these results are capable of measuring.

## Content Analysis Results

### The First Intifada

The *New York Times* published over 16,000 articles related to Palestine and/or Israel during the First Intifada. Of these, around 40% reference Palestinian groups or individuals, while around 93% reference Israeli groups or individuals. According to the results of the logistic regression, 11.9% of all references to Palestinians used violent language, while only 5.9% of all references to Israelis used violent language. [__Figure 1__](#figure-1) shows how the percentage of references that used violent language in the *New York Times* evolved over the First Intifada. At the beginning of the period, violent language was used significantly more in references to Palestinians than references to Israelis. These statistics became slightly closer towards the end of the Intifada. It is important to note that Israeli violence was actually significantly higher than Palestinian violence during this period __[[Khalidi 2021](#khalidi-2021), [Beinin and Hajjar 2014](#beinin-and-hajjar-2014)]__, so equality of metric does not mean equity of representation in this case.

![Figure 1]({{site.baseurl}}/images/nyt-paper/both_violence_first_intifada.png)
*__Figure 1.__ Percent of references to Palestinians and Israelis that used violent language during the First Intifada.*

The *Times* reports referred to Palestinians in the passive voice 15.7% of the time. On the other hand, reports referred to Israelis using the passive voice only 6.4% of the time. This means the *Times* referred to Palestinians in the passive voice more than twice as often as they did Israelis. [__Figure 2__](#figure-2) shows the tone and objectivity scores of these passive voice references. In addition to being referenced more frequently in the passive voice, references to Palestinians were also generally more negative in tone, and references to Israelis in the passive voice were generally more objective. The use of passive voice de-emphasizes or hides those perpetrating such negative action on Palestinians; this has the rhetorical effect of minimizing the responsibility of Israeli aggressors in causing Palestinian suffering.

![Figure 2]({{site.baseurl}}/images/nyt-paper/passive_pos_obj_first_intifada.png)
*__Figure 2.__ Tone (left) and objectivity (right) of passive voice references to Palestinians and Israelis during the First Intifada. Positive values indicate positive tone, negative values indicate negative tone, and zero values indicate neutrality. More positive objectivity values indicate higher objectivity (i.e. less presence of opinion) in the reference.*

### The Second Intifada

The *New York Times* published over 17,000 articles related to Palestine and/or Israel during the Second Intifada. Of these, around 49% reference Palestinian groups or individuals, while around 93% reference Israeli groups or individuals. According to the results of the logistic regression, 15.9% of all references to Palestinians used violent language, while 11.7% of all references to Israelis used violent language. [__Figure 3__](#figure-3) shows how the percentage of references that used violent language in the *New York Times* evolved over the Second Intifada. The *Times* referenced Palestinians using violent language far more often than they did Israelis throughout the entire period.

![Figure 3]({{site.baseurl}}/images/nyt-paper/both_violence_second_intifada.png)
*__Figure 3.__ Percent of references to Palestinians and Israelis that used violent language during the Second Intifada.*

While both percentages decreased from the First Intifada, Palestinians were still referred to using the passive voice twice as often as Israelis (12.6% and 6.3%, respectively). References to Israelis in the passive voice had more positive tone and were generally marked to be more objective (see [__Figure 4__](#figure-4)).

![Figure 4]({{site.baseurl}}/images/nyt-paper/passive_pos_obj_second_intifada.png)
*__Figure 4.__ Tone (left) and objectivity (right) of passive voice references to Palestinians and Israelis during the Second Intifada. Positive values indicate positive tone, negative values indicate negative tone, and zero values indicate neutrality. More positive objectivity values indicate higher objectivity (i.e. less presence of opinion) in the reference.*

## Implications

This study was released during May 2021. Starting May 8, 2021, Israeli forces raided the Al-Aqsa mosque compound and forcibly dispossessed Palestinian families in Sheikh Jarrah – a predominantly Palestinian neighborhood in East Jerusalem [__[Bishara 2021]__](#bishara-2021). In addition, Israel has repeatedly bombed the Gaza Strip. Overall, fifty-five Israeli air raids have been perpetrated against Palestinian – destroying business, media offices, and residences [__[Uras and Siddiqui 2021]__](#uras-and-siddiqui-2021). As of May 16, 2021, almost 200 Palestinians have been killed as a result of these attacks. Uras and Siddiqui of *Al Jazeera* report, “At least 192 people, including 58 children and 34 women, have been killed in the Gaza Strip since the latest violence began a week ago…Three Palestinian children [are] injured every hour on average” [__[Uras and Siddiqui 2021]__](#uras-and-siddiqui-2021). In addition, over 30,000 Palestinians have been displaced by the Israeli attacks. Meanwhile, ten Israelis have died, two of which were children [__[Uras and Siddiqui 2021]__](#uras-and-siddiqui-2021).

In contrast to the true nature of the events, headlines from the *New York Times* on the raids and airstrikes are marked by ambiguity and bias. Patrick Kingsley and Isabel Kershner write, “More Than 30 Dead in Gaza and Israel as Fighting Quickly Escalates,” on May 11, 2021 [__[Kingsley and Kershner 2021]__](#kingsley-and-kershner-2021). Their article fails to clarify this included 28 Palestinians and two Israelis [__[Akram and Federman 2021]__](#akram-and-federman-2021). Most headlines refer to recent tragedies as the “Israel-Hamas Fight” or “Gaza Conflict” or “Israeli-Palestinian Strife” – propagating a false narrative that both sides incite equivalent violence or withstand equivalent strife __[[Abuheweila and Kingsley 2021](#abuheweila-and-kingsley-2021), [Associated Press 2021](#associated-press-2021), [Yee 2021](#yee-2021)]__. While the *Times* failed to highlight the deaths of fifty-eight Palestinian children, they made sure to highlight one of the two Israeli children who were killed in a headline: “Gaza Rocket Finds a Rare Gap in Israeli Armor, and a Boy Is Killed” [__[Kershner 2021]__](#kershner-2021). These are only a few examples of bias in recent *NYT* reports. As violence continues to unfold, it is more important than ever to be critical of the sources we reference.

Palestinian Foreign Minister Riyad al-Maliki said in a recent interview, “there are no words to describe the horrors our people are enduring…Israel is killing us” [__[Al Jazeera 2021]__](#al-jazeera-2021). Meanwhile, the *New York Times* reporting upholds the oppressor and spreads a false perception of the situation.

In 2021, the New York Times continues its legacy of Palestinian erasure.

## Resources

Read [DecolonizePalestine.com](https://decolonizepalestine.com) for a user-friendly Palestine 101. Follow Palestinian-run, de-centralized news sources such as the IMEU (__@theIMEU__), Eye on Palestine (__@EyeonPalestine__), & the Palestinian Youth Movement (__@palyouthmvmt__) on Instagram & Twitter. As violence continues to unfold, it is more important than ever to be critical of the sources we reference. We need to listen to Palestinian activists like Sumaya Awad (__@sumayaawad__), Mohammed El-Kurd (__@m7mdkurd__), Muna El-Kurd (__@kurd_muna__), and Noura Erakat (__@4noura__), to name only a few incredible people.

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
Associated Press. 'Fighting Must Stop': U.N. Holds First Public Meeting on Gaza Conflict. *New York Times*, May 16,
2021.

### [Beinin and Hajjar 2014]
Beinin, Joel, and Lisa Hajjar. Palestine, Israel and the Arab-Israeli Conflict: A Primer. Washington, DC: Middle East Research and Information Project, 2014.

### [Bishara 2021]
Bishara, Marwan. Jerusalem, the Unfolding Tragedy. *Al Jazeera*, May 11, 2021.

### [Bolukbasi *et al.* 2016]
Bolukbasi, Tolga, Kai-Wei Chang, James Zou, Venkatesh Saligrama, and Adam T. Kalai. Man is to Computer Programmer as Woman is to Homemaker? Debiasing Word Embeddings. In *Advances in Neural Information Processing Systems*, edited by D.Lee, M. Sugiyama, U. Luxburg, I. Guyon and R. Garnett. *Curran Associates, Inc.* 29, (2016).

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
Kingsley, Patrick, and Isabel Kershner. More Than 30 Dead in Gaza and Israel as Fighting Quickly Escalates. *New York
Times*, May 11, 2021.

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

