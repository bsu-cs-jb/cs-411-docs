---
title: Home
layout: home
nav_order: 1
---

## Welcome to CS 411

### Labs

{% assign lab_02 = site.pages | where: "path", "lab-02/specification.md" | first %}
{% assign lab_03 = site.pages | where: "path", "lab-03/specification.md" | first %}

- [Lab 1: First React Native app]({% link lab-01/specification.md %})
{%- if lab_02.published %}
- [Lab 2: Component State]({% link lab-02/specification.md %})
{% endif %}
{%- if lab_03.published %}
- [Lab 3]({% link lab-03/specification.md %})
{% endif %}

### Projects

No projects yet!

### Class Resources

{% include setup-links.md %}

[Links to online resources]({% link online-resources.md %})

