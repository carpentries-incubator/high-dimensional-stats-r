# Reviews: high dimensional statistics with R
The purpose of this document is to summarise and track how the lesson has developed in response to peer reviews, feedback from instructors and Carpentries advice. We also detail the main changes that still need to be made and thus define a roadmap to publication. 

Note that the lesson has been developed over around 3 years and iteratively improved. This document only highlights reviews contributed by reviewers external to the main authors, except following rounds of teaching. Details of other improvements can be found throughout the repository and the list of authors is given in [AUTHORS](AUTHORS).

Thank you to our reviewers and instructors for their feedback. If you would like to submit a review or pull request, please see our [Contribution Guide](https://github.com/carpentries-incubator/high-dimensional-stats-r/blob/main/CONTRIBUTING.md) for more information.

## Peer reviews
**Review by Emma Rand on Episode 1: Introduction to high-dimensional data  ([#39](https://github.com/carpentries-incubator/high-dimensional-stats-r/issues/39))**

The reviewer liked this episode as an introduction to the course, particularly that high-dimensional data were defined explicitly with examples, that important points were reiterated in the text, and that the motivation for using alternative methods when considering high-dimensional data was given. The comments pertained to the entire episode, with the big changes relating to elaborating and expanding the questions or solutions for the challenges, inline code formatting and elaborating reason for package use. 

&#x2611; Changes were made in line with all the suggestions exactly, and are itemised in the issue and the associated points in [#64](https://github.com/carpentries-incubator/high-dimensional-stats-r/issues/64).

**Review by Emma Rand on Episode 2: Regression with many outcomes  ([#47](https://github.com/carpentries-incubator/high-dimensional-stats-r/issues/47]))** 

The reviewer particularly liked that this episode demonstrates why we need alternative approaches to regression for high-dimensional data and the multiple testing section. Although many comments were given, the reviewer highlighted that the episode was long, that new concepts should be removed from Challenge 1 and that the smoking model figure should be corrected. The review also highlighted issues with the remote theme.

&#x2611; Changes were made in line with the suggestions exactly, including reducing the length of the lesson. The changes are itemised in the issue and the associated points in [#64](https://github.com/carpentries-incubator/high-dimensional-stats-r/issues/64). 

&#x2612; The only point that remains to be addressed:

- The first challenge makes good points but introduces new concepts rather than tests presented content.

**Review by Emma Rand on Episode 3: Regularised regression ([#49](https://github.com/carpentries-incubator/high-dimensional-stats-r/issues/49))**

The reviewer liked that the episode emphasises a genuine understanding of the methods. Amongst the full review comments, the reviewer commented that the episode is long and suggested some sections to remove. The reviewer also suggested several points that could be expanded to improve the use of statistical 'jargon' and drawing links between jargon to make the episode more approachable to a biological sciences audience. 

&#x2611; All the suggested changes were made and are detailed in the issue. 


**Review by Christie Barron on Episode 5: Factor analysis ([#53](https://github.com/carpentries-incubator/high-dimensional-stats-r/issues/53))**

Christie commented that it may be useful to discuss confirmatory factor analysis in addition to exploratory factor analysis to clarify that this is another approach that can be used. In addition, approaches to factor enumeration could be discussed and R packages that make factor analysis easier.

&#x2611; All of the suggested changes were made and are detailed in the issue and in commits 14584c8 and 3419337.

**Review by Mary Llewellyn on Episode 1: Introduction to high-dimensional data ([#112](https://github.com/carpentries-incubator/high-dimensional-stats-r/issues/112))**

The reviewer liked that this episode struck a good balance between motivating the course clearly whilst avoiding cognitive overload. The reviewer suggested changes largely related to adding signposting, foreshadowing to motivate the entire lesson from the start and re-ordering paragraphs. The reviewer also suggested minor wording changes to, for example, clarify the difference between the "Challenges" (exercises) and "challenges" in the general sense and to ensure learners, especially independent learners, had completed the setup instructions.

&#x2611; All the suggested changes were made, detailed in the issue. From the discussions following this review, we have also clarified the definition of high-dimensional data and plan to set up a data description page [#132](https://github.com/carpentries-incubator/high-dimensional-stats-r/issues/132).



**Review by Mary Llewellyn on Episode 2: Regression with many outcomes ([#114](https://github.com/carpentries-incubator/high-dimensional-stats-r/issues/114))**

The reviewer wrote that they really liked the episode and believed it's really valuable to explore many outcomes as well as many predictors. They had a few queries on the episode and suggested mainly that some of the more complex programming concepts could be removed to avoid cognitive overload, and clarification about the motivation of the episode as avoiding data dredging. 

&#x2611; All of the suggested changes were made and are detailed in the issue.

**Review by Mary Llewellyn on Episode 3: Regularised regression ([#115](https://github.com/carpentries-incubator/high-dimensional-stats-r/issues/115))**

The reviewer liked the episode and commented that, although it's long, it makes challenging ideas approachable. The suggestions largely related to how regularisation is motivated and linking ideas to the previous lesson, signposting, how singularities are described and the placement of the linear regression section within the episode. Further adjustments were recommended for independent learners.

&#x2611; All of the suggested changes were made, detailed in the issue.


**Review by Mary Llewellyn on Episode 4: Principal Component Analysis ([#117](https://github.com/carpentries-incubator/high-dimensional-stats-r/issues/117))**

The reviewer really liked the way that PCA is presented practically. The main comments related to clarifying the motivation for various parts of the episode, moving discussion of advantages and disadvantages to the end of the episode, signposting, making it clearer when examples are demonstrative and streamlining package use.

&#x2611; All of the suggested changes were made and are detailed in the issue. Various additional changes were made following the comments (detailed in the issue), including refining the number of PCA packages used to one, simplifying the scree plots and adding further detail to the code comments.

**Review by Mary Llewellyn on Episode 5: Factor analysis ([#118](https://github.com/carpentries-incubator/high-dimensional-stats-r/issues/118))**

The reviewer thought that this episode was well-balanced with the previous episode and had a few suggestions to differentiate between factor analysis and PCA, how latent variables are defined, signposting, moving discussion of advantages and disadvantages to the end of the episode, some wording around the hypothesis tests, and some adaptations for the individual learner.

&#x2611; All of the suggested changes were made, detailed in the issue. Additional changes were made following the comments with respect to removing discussion of the rotations to reduce the likelihood of cognitive overload.

**Review by Mary Llewellyn on Episode 6: K-means ([#119](https://github.com/carpentries-incubator/high-dimensional-stats-r/issues/119))**

The reviewer really liked that this episode builds gradually from an initial example and stated that this makes the narrative very clear. Most of the suggestions were with respect to wording, minor re-ordering of sections, signposting and differentiating K-means from the methods already introduced. 

&#x2611; All of the suggested changes were made and are detailed in the issue. 

**Review by Mary Llewellyn on Episode 7: Hierarchical clustering ([#120](https://github.com/carpentries-incubator/high-dimensional-stats-r/issues/120))**

The reviewer liked how this episode built on K-means clustering on the second episode and the use of visualisation to illustrate the concepts in the episode. The suggestions related to adding further motivation for the episode, structural re-ordering, annotating plots and code, and signposting.

&#x2611; All of the suggested changes were made and are detailed in the issue.



## Instructor feedback
**Feedback from teaching 21st October 2021 ([#33](https://github.com/carpentries-incubator/high-dimensional-stats-r/issues/33))**

Overall, the learners liked that the practical examples were clear and easily understood by biologists, the slides were informative and well-presented, and they liked how useful the lesson is. They particularly noted that they liked the pace and depth of the first two episodes and the visualisations in episode 7. 

There were some issues with equation rendering in chrome and some learners found that the pace could be a little faster in places. Episode-specific comments noted that episode 3 was too theoretical, episodes 4 and 5 could contain more code comments for learners looking back on the course and episodes 6 and 7 could contain more examples and give an overview of the general steps of each method/when each is useful.

&#x2611; The lesson as been iteratively improved over time. As such, episode 3 is now presented much more practically (fewer mathematical expressions, existing theoretical concepts are more clearly and practically motivated, additional content such as Bayesian methods have been removed to focus on the concepts already introduced). Episodes 4 and 5 have almost completely changed and the code is commented and motivated much more clearly. Episodes 6 and 7 now motivate the practical uses of each method more clearly. From teaching, the course was also improved by shortening the introduction to focus only on the difficulties of high-dimensional data, episode 3 was presented from a more practical perspective and episode 5 was made more detailed.

**Additional changes following teaching from February-June 2022 ([#52](https://github.com/carpentries-incubator/high-dimensional-stats-r/issues/33), [#57](https://github.com/carpentries-incubator/high-dimensional-stats-r/pull/57), [#63](https://github.com/carpentries-incubator/high-dimensional-stats-r/pull/63), [#64](https://github.com/carpentries-incubator/high-dimensional-stats-r/issues/64), [#76](https://github.com/carpentries-incubator/high-dimensional-stats-r/issues/76))**

Several other changes following notes and feedback from teaching are detailed in these issues.

**Feedback from Edward Wallace from teaching September 2022 ([#86](https://github.com/carpentries-incubator/high-dimensional-stats-r/issues/86), [#88](https://github.com/carpentries-incubator/high-dimensional-stats-r/issues/88))**

The learners found the lessons relevant to their work, particularly episodes 4 and 5, which they thought were explained really well, were practical and easily to follow, and introduced concepts they found important to their work at a level that was understandable to them. They said that the way these episodes were presented helped them to fill the gaps in their understanding from practical implementation. They also particularly liked the coding and visualisation in episode 3.

Many of the comments related to timings (allowing more time) and clarifying wording. 

&#x2611; Changes were made in response to most comments in [#86](https://github.com/carpentries-incubator/high-dimensional-stats-r/issues/86), [#89](https://github.com/carpentries-incubator/high-dimensional-stats-r/issues/88) and many remaining changes are evident in the current lesson.

&#x2612; The remaining points to be addressed are:

- Providing function definitions or access to function documentation (i.e., clarifying arguments). This noted by both instructors and learners. 
- Removing or clarifying example 2 of Challenge 1, Episode 4. The instructors noted that it could be interpreted as PCA-appropriate.
- Rewording Challenge 2 in Episode 4. The instructors noted that some of the learners said it seemed like a trick question.

**Feedback from February 2024 teaching ([#145](https://github.com/carpentries-incubator/high-dimensional-stats-r/issues/145))**

The instructors liked teaching the course and found it fun to teach. Comments largely related to timing adjustments, explaining packages, adjusting the way the factor analysis episode is presented and some structural changes to the first three episodes.

&#x2612; Changes in response to this feedback are ongoing and documented in the issue. The points that remain to be addressed are:

 - Possibly could describe the R packages/rationalise them in greater detail to reduce the risk of technical issues.
 - The factor analysis episode could be combined into another episode (potentially doesn't need to be its own episode) since the course is pitched at biologists. This could be combined into the PCA episode in a callout.
- In episode 2, the DNA methylation data discussion could be moved to episode 1, the broom package is possibly unnecessary and we could just use summary(), the advanced content to compute the t-statistics by hand would probably be better off in a sidebar.
- In episode 3, the Introduction and coefficient estimates section could be moved to episode 2, the coefficient estimates section should probably go before discussion of singularities, more explanation of the heat map in the cross-validation section required to clarify what it shows.

## Carpentries-specific 

&#x2611; The lesson has been developed using The Carpentries template. As such, a number of requirements are fulfilled:

- Alt text and captions complete for Episodes 1, 2, 5 in line with [The Carpentries guide](https://carpentries.org/blog/2022/11/accathon/).
- Conforms to the [The Carpentries Code of Conduct](https://docs.carpentries.org/topic_folders/policies/code-of-conduct.html).
- Testing that the lesson is appropriate for the target audience identified, is accurate, descriptive and easy to understand and is structured to manage cognitive load. 
- Does not use dismissive language.
- All lesson tools are open source and the data sets are accessible.
- Tools and data checked for CC0 license compatibility. Most are compatible, exceptions to check are listed below.
- Data sets are representative of data typically encountered in the domain.
- Tests that the example tasks and narrative of the lesson are appropriate and realistic.
- Tested that the solutions to all exercises are accurate and sufficiently explained, and that the tasks and formats are appropriate for the expected experience level of the target audience.
- Exercises are designed with diagnostic power. 
- The learning objectives are clear, descriptive and measurable, and focus on the skills being taught and not the functions/tools  e.g. "filter the rows of a data frame based on the contents of one or more columns," rather than "use the filter function on a data frame."
-  The target audience identified for the lesson is specific and realistic.
-  Tested that the list of required prior skills and/or knowledge is complete and accurate.
-  The setup and installation instructions are complete, accurate, and easy to follow.
- It has been taught at least two times by Instructors who had not been heavily involved in the development of the 
lesson before that point.

&#x2612; The points still to be addressed are:

- Conversion to The Carpentries Workbench
- Alt text for Episode 3 and Challenge figures in Episode 4, 6 and 7 required.
- Ensuring that Alt text is accessible from the  WAVE Web Accessibility Evaluation Tool or associated browser extensions.
- Ensure tools and data sets have CC0 compatible license: CC0 (required by Carpentries) vs GPL (>= 2) license ("genridge" for prostate data, limma, glmnet, cluster, pheatmap, dendextend), GPL-3 (PCAtools, SingleCellExperiment, scater, bluster, ), Artistic-2.0 (for BiocManager, minfi, SummarizedExperiment packages), GPL (knitr) compatibility, CC-BY (Horvath data), LGPL-3 (clValid).
- The lesson does not make use of superfluous data sets: ensuring that later uses of microarray and scrnaseq data is justified (as opposed to prostate/methylation).
- Ensuring that the lesson content does not make extensive use of contractions ("can’t" instead of "cannot" etc).
- The example data sets are described.
- All key terms are contained in the internal lesson glossary.
- Check that the lesson includes exercises in a variety of formats. 
- All lesson and episode objectives are assessed by exercises or another opportunity for formative assessment. Mostly complete apart from Challenges needed to test "Understand the importance of clustering in high-dimensional data" in Episode 6, and "Understand when to use hierarchical clustering on high-dimensional data" and "Explore different distance matrix methods" in Episode 7.
