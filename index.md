---
title: CS 411
layout: home
---

## Welcome to CS 411

### Labs

{% for lab in site.labs %}
- [{{lab.title}}]({{site.baseurl}}{{lab.url}}): {{lab.goal}}
{% endfor %}

### Projects

{% for project in site.projects %}
- [{{project.title}}]({{site.baseurl}}{{project.url}})
{% else %}
No projects yet!
{% endfor %}

### Resources

{% for resource in site.resources %}
- [{{resource.title}}]({{site.baseurl}}{{resource.url}})
{% endfor %}
