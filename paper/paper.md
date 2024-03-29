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

\begin{document}

\maketitle

%The goal is that someone reading the JOSE paper has enough information to decide if they’d be interested in adoping the learning module or software. Readers will want to know how the content/software has been used, and how they would adopt it. They may also want to be persuaded that the authors have put careful work on creating the material, and have experience teaching with it

%1000 words max 

%example paper/template: https://openjournals.readthedocs.io/en/jose/submitting.html
%edward wallace's paper: https://github.com/carpentries-lab/good-enough-practices/blob/main/paper.md
%Another nice paper: https://jose.theoj.org/papers/10.21105/jose.00209


\section*{Summary}
%summarising all of the below
High-dimensional data have become more prevalent in the biological sciences, and with that an increased need for resources on specialised analytical techniques that are accessible to biological sciences researchers. We present a learning module, \textit{High dimensional statistics with R} \citep{HD_stats_repo_2024}, covering core and practically valuable concepts for high-dimensional data analysis in the biological sciences over four $3.5$ hour sessions. The lesson has been developed in \href{https://carpentries-incubator.org/}{The Carpentries Incubator} as part of the \href{https://edcarp.github.io/Ed-DaSH/index.html}{Ed-DaSH training programme}, teaching robust understanding, implementation and evaluation of high-dimensional regression, principal component and factor analysis and clustering when applied to high-dimensional biological sciences data sets. The lesson has been through multiple rounds of internal, external and instructional review and we hope to continue developing the lesson in collaboration with the high-dimensional statistics and biological sciences communities.



\section*{Statement of need}
%explain how the submitted artifacts contribute to computationally enabled teaching and learning, and describing how they might be adopted by others.
%Authors make the case for their submission’s contribution in the paper, under the heading “Statement of Need.” The criterion is less one of novelty, than need: submissions targeting subjects or applications already addressed by other resources are eligible, if the authors make a case for why they might be adopted by learners or other instructors. For example, authors could say that they approach a topic differently, that they update material to modern contexts, that the need is born of a new educational program, or a conference tutorial or other informal-learning scenario.
With advances in computing facilities, high-dimensional data are becoming increasingly common in the biological sciences. Research studies now commonly use, for example, large amounts of DNA methylation data to analyse gene expression or large amounts of medical data to analyse patient outcomes. Using high-dimensional data requires a number of specialised techniques since identifying and differentiating between effects is challenging when there are many variables. However, practical resources explaining the core techniques for dealing with high-dimensional data are often not accessible to biological sciences researchers. This learning module (\textit{lesson}; \citealp{HD_stats_repo_2024}) has been developed as part of the Ed-DaSH training programme within The Carpentries Incubator to provide practical training on high-dimensional techniques specifically for researchers in the biological sciences.
 


\section*{Content, learning objectives and design principles}
%learning objectives, content, design
The lesson is targeted at biological sciences researchers at [any particular level?] with  assumed pre-requisite knowledge of [?]-level biological sciences concepts and []-level knowledge of R programming and statistics. The lesson is comprised of $7$ episodes, each focusing on a core concept in high-dimensional data analysis: 


\begin{itemize}
    \item[1.] Introduction to high-dimensional data
    \item[2.] Regression with many outcomes
    \item[3.] Regularised regression
    \item[4.] Principal component analysis
    \item[5.] Factor analysis 
    \item[6.] K-means clustering
    \item[7.] Hierarchical clustering
\end{itemize}


\noindent In keeping with the target learners for these lessons, each episode is principally designed around practical biological sciences value: each episode focuses on 1) understanding core conceptual information to the extent that it is useful in understanding the method, 2) when and how each method can be applied 3) robust implementation and evaluation of each method, and 4) practical examples in R using real biological sciences data sets. 

As well as being designed under the principle of practical utility, each episode was designed following The Carpentries framework. This includes descriptive and easy to understand instructional text with appropriately re-used data examples to minimise cognitive load, and testing that learners have understood the lesson in line with the lesson objectives (defined clearly at the start of each episode) using mixed format exercises. 


\section*{Instructional design}
% instructional design, and experience of use in teaching and learning situations
The lesson is designed to be delivered in four $3.5$ hour sessions over four days, including breaks and additional question time of around $40$ minutes per session. Most sessions cover two episodes, with an entire session for episode 3. Each episode is comprised of $60-75\%$ instruction and live coding, and the remainder of the time is allocated to exercises to emphasise practical application. 

The course web page is comprehensive, including setup instructions, license information, instructor information on the session splits and optional lecture slides for instructors to use to supplement the material in each episode. Each episode is self-contained to allow for individual learners and learners taking the course can use the episodes for review or practice outside of the sessions.

\section*{Teaching experience}
The lesson has been taught [four?] times by [?PhD students, postdocs, lecturers and professors] to [who?]. The lesson has been taught by the core team that created the lesson [X?] times and instructors independent of the lesson development [X] times. We are pleased that the lesson has received very positive feedback from learners on its practical utility. To improve the lesson, we constantly adapt the materials following instructor insights after each round of teaching. We also gather feedback from learners to improve the lesson based on learning experience. Full information on the changes made following feedback from round of teaching can be found in [cite reviews once live]. 


\section*{Development}
Story of how the project came to be: How did the initial idea come about? Was it inspired by anything in particular? How was the course initially designed/what was discussed at the curriculum advisory committee? What gap in students' knowledge did you identify and how, and how did you approach filling it?

With UKRI funding for the wider Ed-DaSH project, the material was developed within the Carpentries framework, [what changed]. Over the past three years, the lesson has been further developed and improved, with X rounds of internal, instructor and peer review ([cite reviews once live]), culminating in an informative key set of learning materials for researchers in the biological sciences that has been taught [four?] times.



\section*{Acknowledgements}
[From website but check below]

We thank the instructors [list everyone?] for their time and insight in teaching and reviewing the course, [specific people not intended to be cited I think] for..., Emma Rand and Christie Barron for reviewing the lesson and providing fresh and incredibly valuable perspectives, the wider Ed-DaSH team and The Carpentries community, [?Toby Hodges].

This work was supported by UK Research and Innovation [grant number MR/V039075/1].
Any other funding?

\bibliography{paper}
%any further references, perhaps related to the story?

\end{document}
