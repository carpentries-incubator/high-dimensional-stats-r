---
title: Lecture slides
---



<!-- - [{{p.title}}]({{p.url | replace: "Rmd", "pdf"}}) -->

{% for p in site.slides %}

- [{{p.title}}]({{p.url | replace: "Rmd", "html"}})
  {% endfor %}




