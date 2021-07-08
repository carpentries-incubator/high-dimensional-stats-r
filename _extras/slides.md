---
title: Lecture slides
---

<!-- {{ site.slides}} -->

{% for p in site.slides %}
- [{{p.title}}](relative_root_path/{{p.url | replace: "Rmd", "pdf"}})
{% endfor %}


{% include links.md %}
