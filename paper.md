---
title: 'High dimensional statistics with R: a practical learning module for researchers in the biological sciences'
tags:
  - High-dimensional data
  - R
  - The Carpentries
authors:
  - name: first author
    email: first author email
    orcid: first author orcid
    affiliation: number(s) from index below
  - name: second author
    email: second author email
    orcid: second author orcid 
    affiliation: numbers(s) from index below
affiliations:
 - name: first affil, in order
   index: 1
 - name: second affil, in order 
   index: 2
   
date: 15 March 2024
bibliography: paper.bib
---

# Summary
High-dimensional data have become more prevalent in the biological sciences, and with that an increased
need for resources on specialised analytical techniques that are accessible to biological sciences researchers. 
We present a learning module, _High dimensional statistics with R_ [@HD_stats_repo:2024], covering core and 
practically valuable concepts for high-dimensional data analysis in the biological sciences over four 3.5 hour 
sessions. The lesson has been developed in [The Carpentries Incubator](https://carpentries-incubator.org/) as 
part of the [Ed-DaSH training programme](https://edcarp.github.io/Ed-DaSH/index.html), teaching robust 
understanding, implementation and evaluation of high-dimensional regression, principal component and factor 
analysis and clustering when applied to high-dimensional biological sciences data sets. The lesson has been 
through multiple rounds of internal, external and instructional review and we hope to continue developing 
the lesson in collaboration with the high-dimensional statistics and biological sciences communities.


# Statement of need 
With advances in computing facilities, high-dimensional data are becoming increasingly common in the biological
sciences. Research studies now commonly use, for example, large amounts of DNA methylation data to analyse gene
expression or large amounts of medical data to analyse patient outcomes. Using high-dimensional data requires
specialised techniques since identifying and differentiating between effects is challenging when there are many 
variables. However, practical resources explaining the core techniques for dealing with high-dimensional data 
are often not accessible to biological sciences researchers. This learning module (_lesson_; [@HD_stats_repo:2024])
has been developed as part of the Ed-DaSH training programme within The Carpentries Incubator to provide practical
training on high-dimensional techniques specifically for researchers in the biological sciences.


# Content, learning objectives and design principles
The lesson is targeted at biological sciences researchers at [any particular level?] with  assumed pre-requisite 
knowledge of [?]-level biological sciences concepts and []-level knowledge of R programming and statistics. 
The lesson contains 7 episodes, each focusing on a core concept in high-dimensional data analysis: 

1. Introduction to high-dimensional data
2. Regression with many outcomes
3. Regularised regression
4. Principal component analysis
5. Factor analysis
6. K-means clustering
7. Hierarchical clustering

In keeping with the target learners for these lessons, each episode is principally designed around practical 
biological sciences value: each episode focuses on 1) understanding core conceptual information to the extent 
that it is useful in understanding the method, 2) when and how each method can be applied 3) robust 
implementation and evaluation of each method, and 4) practical examples in R using real biological sciences 
data sets. 

As well as being designed under the principle of practical utility, each episode was designed following The
Carpentries framework. This includes descriptive and easy to understand instructional text with appropriately
re-used data examples to minimise cognitive load, and testing that learners have understood the lesson in line
with the lesson objectives (defined clearly at the start of each episode) using mixed format exercises. 


# Instructional design
The lesson is designed to be delivered in four 3.5 hour sessions over four days, including breaks and additional
question time of around 40 minutes per session. Most sessions cover two episodes, with an entire session for 
episode 3. Each episode is comprised of 60-75% instruction and live coding, and the remainder of the time is
allocated to exercises to emphasise practical application. 

The course web page is comprehensive, including setup instructions, license information, instructor information 
on the session splits and optional lecture slides for instructors to use to supplement the material in each 
episode. Each episode is self-contained to allow for individual learners and learners taking the course can use
the episodes for review or practice outside of the sessions.

# Teaching experience

<!-- Remove this list later...
1. Ailith, Alan https://edcarp.github.io/2021-10-26_ed-dash_high-dimensional-stats/
2. Cata, Ailith https://edcarp.github.io/15-02-22_ed-dash_high-dim-stats/
3. Ailith, Nathan https://edcarp.github.io/2022-05-17_ed-dash_high-dim-stats/
4. Hugh https://edcarp.github.io/2022-07-26_ed-dash_high-dim-stats/
5. EdWall https://edcarp.github.io/2022-09-27_ed-dash_high-dim-stats/
6. Hannes https://edcarp.github.io/2023-01-17_ed-dash_high-dim-stats/
7. Hywel https://edcarp.github.io/2024-02-27_ed-dash_high-dim-stats/
8. Ben https://edcarp.github.io/2024-03-19_ed-dash_high-dim-stats/
9. Rosie/Ben https://edcarp.github.io/2024-06-11_ed-dash_high-dim-stats/
-->

The lesson has been taught 9 times by a range of instructors consisting of PhD students, bioinformaticians,
post-doctoral researchers, statisticians and group leaders. Learners have included postgraduate students,
post-doctoral researchers, bioinformaticians and other computational researchers.
The lesson has been taught by the core team that created the lesson 3 times and instructors independent of the
lesson development 6 times. We are pleased that the lesson has received very positive feedback from learners on
its practical utility. To improve the lesson, we constantly adapt the materials following instructor insights after
each round of teaching. We also gather feedback from learners to improve the lesson based on learning experience. 
Full information on the changes made following feedback from round of teaching can be found in a file on the
github repository: https://github.com/carpentries-incubator/high-dimensional-stats-r/blob/4325823/reviews.md


# Development
Story of how the project came to be: How did the initial idea come about? Was it inspired by anything in particular?
How was the course initially designed/what was discussed at the curriculum advisory committee?
What gap in students' knowledge did you identify and how, and how did you approach filling it?
Any other references to help clarify the story?

With UKRI funding for the wider Ed-DaSH project, the material was developed within the Carpentries framework, 
[what changed]. Over the past three years, the lesson has been further developed and improved, with X rounds of 
internal, instructor and peer review ([cite reviews once live]), culminating in an informative key set of learning
materials for researchers in the biological sciences that has been taught [four?] times.


# Acknowledgements
[From website but check below]

We thank the instructors [list everyone?] for their time and insight in teaching and reviewing the course, [specific people not intended to be cited I think] for..., Emma Rand and Christie Barron for reviewing the lesson and providing fresh and incredibly valuable perspectives, the wider Ed-DaSH team and The Carpentries community, [?Toby Hodges].

This work was supported by UK Research and Innovation [grant number MR/V039075/1].
Any other funding?

