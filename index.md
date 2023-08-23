---
title: CS 411
layout: home
---

## Welcome to CS 411


### Labs

{% for lab in site.labs %}
- [{{lab.title}}]({{site.baseurl}}/{{lab.url}}): {{lab.goal}}
  - [cs-411-docs/{{lab.url}}](cs-411-docs/{{lab.url}})
  - [/{{lab.url}}](/{{lab.url}})
  - [{{site.baseurl}}/{{lab.url}}]({{site.baseurl}}/{{lab.url}})
  - [{{site.baseurl}}{{lab.url}}]({{site.baseurl}}{{lab.url}})
  - Path: [{{lab.path}}]({{lab.path}})
  - Relative Path: [{{lab.relative_path}}]({{lab.relative_path}})
  - URL: {{lab.url}}
  - Collection: {{lab.collection}}
  - Title: {{lab.title}}
  - Name: {{lab.name}}
  - Slug: {{lab.slug}}
  - Date: {{lab.date}}
 
{{ lab.content | markdownify }}

{% endfor %}

<ul>
{% for lab in site.labs %}

  <li>
    <a href="cs-411-docs/{{ lab.url }}">
      {{ lab.name }} - {{ lab.goal }}
    </a>
  </li>
{% endfor %}
</ul>
### Resources

{% for resource in site.resources %}
- [{{resource.title}}]({{resource.url}})
- [{{resource.title}}]({{site.baseurl}}/{{resource.url}})
- [{{resource.path}}]({{resource.path}})
{% endfor %}

