---
title: Lecture slides
---

{% include base_path.html %}

<!-- - [{{p.title}}]({{ relative_root_path }}/{{p.url | replace: "Rmd", "pdf"}}) -->
{% for p in site.slides %}
- [{{p.title}}]({{ relative_root_path }}/{{p.url | replace: "Rmd", "html"}})
{% endfor %}


{% include links.md %}
