---
title: Home
layout: home
nav_order: 1
---

## Welcome to CS 411

### Labs

{% assign lab-03 = site.pages | where: "path", "lab-03/specification.md" | first %}
{% assign lab-04 = site.pages | where: "path", "lab-04/specification.md" | first %}

- [Lab 1: First React Native app]({% link lab-01/specification.md %})
- [Lab 2: Component State]({% link lab-02/specification.md %})
{%- if lab-03.published %}
- [Lab 3]({% link lab-03/specification.md %})
{%- endif -%}
{%- if lab-04.published %}
- [Lab 4]({% link lab-04/specification.md %})
{% endif %}

### Projects

{% assign project-01 = site.pages | where: "path", "project-01/specification.md" | first %}
{% assign project-02 = site.pages | where: "path", "project-02/specification.md" | first %}

{%- if project-01.published %}
- [Project 1]({% link project-01/specification.md %})
{%- else -%}
No projects yet!
{%- endif -%}
{%- if project-02.published %}
- [Project 2]({% link project-02/specification.md %})
{% endif %}

### Class Resources

{% include setup-links.md %}

[Links to online resources]({% link online-resources.md %})

