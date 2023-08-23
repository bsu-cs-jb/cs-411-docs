---
title: Home
layout: home
---

## Welcome to CS 411

### Labs

{% for lab in site.labs %}
- [{{lab.title}}]({{site.baseurl}}{{lab.url}}): {{lab.goal}}
{% else %}
No labs yet!
{% endfor %}

### Projects

{% if site.projects == empty %}
No projects yet!
{% else %}
site.projects is true
<ul>
{% for project in site.projects %}
<li><a href="{{project.title}}{{project.title}}">{{project.title.title}}</a></li>
{% endfor %}
</ul>
{% endif %}

### Resources

{% for resource in site.resources %}
- [{{resource.title}}]({{site.baseurl}}{{resource.url}})
{% else %}
No resources yet!
{% endfor %}

<ul>
{% for resource in site.resources %}
<li><a href="{{site.baseurl}}{{resource.url}}">{{resource.title}}</a></li>
{% else %}
No resources yet!
{% endfor %}
</ul>
