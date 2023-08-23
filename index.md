---
title: CS 411
layout: home
---

## Welcome to CS 411


### Labs

{% for lab in site.labs %}
- [{{lab.name}}]({{lab.url}})
{% endfor %}

{% for lab in site.labs %}

  <h2>
    <a href="{{ staff_member.url }}">
      {{ staff_member.name }} - {{ staff_member.position }}
    </a>
  </h2>
{% endfor %}

### Resources

{% for resource in site.resources %}
- [{{resource.name}}]({{resource.url}})
{% endfor %}

