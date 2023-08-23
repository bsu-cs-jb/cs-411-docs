---
title: CS 411
layout: home
---

## Welcome to CS 411

### Labs

{% for lab in site.labs %}
- [{{lab.title}}]({{site.baseurl}}{{lab.url}}): {{lab.goal}}
 
{{ lab.content | markdownify }}

{% endfor %}

### Resources

{% for resource in site.resources %}
- [{{resource.title}}]({{site.baseurl}}{{resource.url}})
{% endfor %}

