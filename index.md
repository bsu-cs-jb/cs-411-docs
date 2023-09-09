---
title: Home
layout: home
nav_order: 1
---

## Welcome to CS 411

### Labs

{% assign lab-01 = site.pages | where: "path", "lab-01/index.md" | first %}
{% assign lab-02 = site.pages | where: "path", "lab-02/index.md" | first %}
{% assign lab-03 = site.pages | where: "path", "lab-03/index.md" | first %}
{% assign lab-04 = site.pages | where: "path", "lab-04/index.md" | first %}

- [Lab 1: {{ lab-01.asgn_name }}]({{ site.baseurl }}{{ lab-01.url }})
- [Lab 2: {{ lab-02.asgn_name }}]({{ site.baseurl }}{{ lab-02.url }})
{%- if lab-03.published %}
- [Lab 3: {{ lab-03.asgn_name }}]({{ site.baseurl }}{{ lab-03.url }})
{%- endif -%}
{%- if lab-04.published %}
- [Lab 4: {{ lab-04.asgn_name }}]({{ site.baseurl }}{{ lab-04.url }})
{% endif %}

### Projects

{% assign project-01 = site.pages | where: "path", "project-01/index.md" | first %}
{% assign project-02 = site.pages | where: "path", "project-02/index.md" | first %}

{%- if project-01.published %}
- [Project 1: {{ project-01.asgn_name }}]({{ site.baseurl }}{{ project-01.url }})
{%- else -%}
No projects yet!
{%- endif -%}
{%- if project-02.published %}
- [Project 2: {{ project-02.asgn_name }}]({{ site.baseurl }}{{ project-02.url }})
{% endif %}

### Class Resources

{% include setup-links.md %}

[Links to online resources]({% link online-resources.md %})

