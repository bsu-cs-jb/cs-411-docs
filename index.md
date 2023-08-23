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

{% if site.projects %}
<ul>
{% for project in site.projects %}
- [{{project.title}}]({{site.baseurl}}{{project.url}})
<li><a href="{{project.title}}{{project.title}}">{{project.title.title}}</a></li>
</ul>
{% endfor %}
{% else %}
No projects yet!
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
