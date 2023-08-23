---
title: CS 411
layout: home
---

## Welcome to CS 411


### Labs

{% for lab in site.labs %}
- [{{lab.name}}]({{lab.url}}): {{lab.goal}}
  - Path: {{lab.path}}
  - Relative Path: {{lab.relative_path}}
  - URL: {{lab.url}}
  - Collection: {{lab.collection}}
  - Date: {{lab.date}}
 
{{ lab.content | markdownify }}

{% endfor %}

{% for lab in site.labs %}

  <h2>
    <a href="{{ lab }}">
      {{ lab.name }} - {{ lab.goal }}
    </a>
  </h2>
{% endfor %}

### Resources

{% for resource in site.resources %}
- [{{resource.relative_path}}]({{resource.url}})
{% endfor %}

