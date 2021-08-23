---
title: Lecture slides
---

{% include base_path.html %}

{% for p in site.slides %}
- [{{p.title}}]({{ relative_root_path }}/{{p.url | replace: "Rmd", "pdf"}})
{% endfor %}


{% include links.md %}
