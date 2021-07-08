---
title: Lecture slides
---

<!-- {{ site.slides}} -->

{% for p in site.slides %}
- [{{p.title}}]({{p.url | replace: "Rmd", "pdf"}})
{% endfor %}


{% include links.md %}
