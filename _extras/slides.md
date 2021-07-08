---
title: Lecture slides
---

{% include base_path.html %}

{% for p in site.slides %}
- [{{p.title}}](/{{p.url | replace: "Rmd", "pdf"}})
{% endfor %}


{% include links.md %}
