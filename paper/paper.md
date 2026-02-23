---
title: 'High dimensional statistics with R: a practical learning module for researchers in the biological sciences'
tags:
  - High-dimensional data
  - R
  - The Carpentries
authors:
  - name: Alan O'Callaghan
    email: alan.ocallaghan@outlook.com
    orcid: 0000-0003-4817-6171
    affiliation: 1
  - name: Gail Robertson
    affiliation: 2
  - name: Hannes Becher
    orcid: 0000-0003-3700-2942
    affiliation: 1
  - name: Mary Llewellyn
    orcid: 0009-0008-3759-4902
    affiliation: 2
  - name: Ailith Ewing
    orcid: 0000-0002-2272-1277
    affiliation: 1
  - name: Catalina Vallejos
    orcid: 0000-0003-3638-1960
    affiliation: 1
affiliations:
 - name: Institute of Genetics and Cancer, The University of Edinburgh, Edinburgh, UK
   index: 1
 - name: School of Mathematics, University of Edinburgh, Edinburgh, UK
   index: 2
   
date: 15 March 2024
bibliography: paper.bib
---

## Summary

High-dimensional data are increasingly prevalent in the biological sciences, resulting in an increased
need for resources, accessible to biological sciences researchers, on specialised analytical techniques. 
We present a learning module, _High dimensional statistics with R_ [@HD_stats_repo:2024], covering core and 
practically valuable concepts for high-dimensional data analysis in the biological sciences over four 3.5 hour 
sessions. The lesson has been developed in [The Carpentries Incubator](https://carpentries-incubator.org/) as 
part of the [Ed-DaSH training programme](https://edcarp.github.io/Ed-DaSH/index.html).
_High dimensional statistics with R_ teaches robust understanding, application and evaluation of
high-dimensional regression, principal component analysis, factor 
analysis and clustering as applied to high-dimensional biological sciences data sets. The lesson has been 
subject to multiple rounds of internal, external and instructional review, and we plan to continue developing 
the lesson in collaboration with the high-dimensional statistics and biological sciences communities.


## Statement of need 

With advances in biological techniques and computing facilities, high-dimensional data are becoming increasingly
common in the biological
sciences. Research studies now commonly use, for example, large amounts of DNA methylation data and RNA sequencing data
to analyse the regulation of gene expression, or large amounts of medical records and associated data
to analyse patient outcomes. High-dimensional data require
specialised analysis techniques, since identifying and differentiating between effects is challenging when there are many 
variables. However, practical resources explaining the core techniques for dealing with high-dimensional data 
are often not accessible to biological sciences researchers. This learning module (_lesson_; [@HD_stats_repo:2024])
has been developed as part of the Ed-DaSH training programme within The Carpentries Incubator to provide practical
training on high-dimensional techniques specifically for researchers in the biological sciences.


## Content, learning objectives and design principles

The lesson is targeted at biological sciences researchers at post-graduate level with  assumed pre-requisite 
knowledge of undergraduate-level biological sciences concepts and undergraduate-level knowledge of R programming and statistics.
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


## Instructional design

The lesson is designed to be delivered in four 3.5 hour sessions over four days, including breaks and additional
question time of around 40 minutes per session. Most sessions cover two episodes, with an entire session for 
episode 3. Each episode is comprised of 60-75% instruction and live coding, and the remainder of the time is
allocated to exercises to emphasise practical application. 

The course web page is comprehensive, including setup instructions, license information, instructor information 
on the session splits and optional lecture slides for instructors to use to supplement the material in each 
episode. Each episode is self-contained to allow for individual learners and learners taking the course can use
the episodes for review or practice outside of the sessions.

## Teaching experience


The lesson has been taught 9 times by a range of instructors consisting of PhD students, bioinformaticians,
post-doctoral researchers, statisticians and group leaders. Learners have included postgraduate students,
post-doctoral researchers, bioinformaticians and other computational researchers.
The lesson has been taught by the core team that created the lesson 3 times and instructors independent of the
lesson development 6 times. We are pleased that the lesson has received very positive feedback from learners on
its practical utility. To improve the lesson, we constantly adapt the materials following instructor insights after
each round of teaching. We also gather feedback from learners to improve the lesson based on learning experience. 
Full information on the changes made following feedback from round of teaching can be found in a file on the
github repository: https://github.com/carpentries-incubator/high-dimensional-stats-r/blob/4325823/reviews.md


## Development

Story of how the project came to be: How did the initial idea come about? Was it inspired by anything in particular?
How was the course initially designed/what was discussed at the curriculum advisory committee?
What gap in students' knowledge did you identify and how, and how did you approach filling it?
Any other references to help clarify the story?

With UKRI funding for the wider Ed-DaSH project, the material was developed within the Carpentries framework.
Initially, profiles of potential learners were identified, to target the learning outcomes of the lessons to meet
the unmet needs. Subsequently, the lessons were iteratively developed, reviewed and tested by the core development team. Over the past three years, the lesson has been further developed and improved, with multiple rounds of 
internal, instructor and peer review (https://github.com/carpentries-incubator/high-dimensional-stats-r/blob/4325823/reviews.md), culminating in an informative key set of learning
materials for researchers in the biological sciences that has been taught nine times.


## Acknowledgements

We thank the instructors who have taught the course for their time and insight in teaching and reviewing the materials. These include
Aleksandra Chybowska, Ben King, Bradley Harris, Diego Chillón, Edward Walles, Hugh Warden, Nathan Constantine-Cooke, Hywel Dunn-Davies, Jan Verburg, Joshua Dibble, Kelsey Tetley-Campbell, Lucie Wöllenstein, Mario Antonioletti, Rosie Eccleston, and Sam Haynes.

We also thank our curriculum advisory committee (Kelly Blacklock, Vanda Calhau Fernandes Inacio De Carvalho, Greame Grimes, Daniel Barker and Nick Schurch) for their helpful guidance in defining the scope of the lesson, Emma Rand and Christie Barron for reviewing the lesson in detail and providing fresh and incredibly valuable perspectives, the wider Ed-DaSH team and The Carpentries community for their help in developing and delivering the lesson.

This work was supported by UK Research and Innovation [grant number MR/V039075/1].

