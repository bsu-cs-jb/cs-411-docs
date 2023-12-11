---
title: Home
layout: home
nav_order: 0
---

# Welcome to CS 411

## Helpful repos

The [Lecture repo for Wed 9/13](https://github.com/bsu-cs-jb/lecture-09-13-wed)
has an implementation of a React Navigation Stack Navigator that implements
types for each screen including `navigation` and `route` prop typing.

## Labs

{% assign lab-01 = site.pages | where: "path", "lab-01/index.md" | first %}
{% assign lab-02 = site.pages | where: "path", "lab-02/index.md" | first %}
{% assign lab-03 = site.pages | where: "path", "lab-03/index.md" | first %}
{% assign lab-04 = site.pages | where: "path", "lab-04/index.md" | first %}
{% assign lab-05 = site.pages | where: "path", "lab-05/index.md" | first %}

- [Lab 1: {{ lab-01.asgn_name }}]({{ site.baseurl }}{{ lab-01.url }})
- [Lab 2: {{ lab-02.asgn_name }}]({{ site.baseurl }}{{ lab-02.url }})
- [Lab 3: {{ lab-03.asgn_name }}]({{ site.baseurl }}{{ lab-03.url }})
- [Lab 4: {{ lab-04.asgn_name }}]({{ site.baseurl }}{{ lab-04.url }})
{%- if lab-05.published %}
- [Lab 5: {{ lab-05.asgn_name }}]({{ site.baseurl }}{{ lab-05.url }})
{% endif %}

## Projects

{% assign project-01 = site.pages | where: "path", "project-01/index.md" | first %}
{% assign project-02 = site.pages | where: "path", "project-02/index.md" | first %}
{% assign project-03 = site.pages | where: "path", "project-03/index.md" | first %}
{% assign project-03b = site.pages | where: "path", "project-03b/index.md" | first %}

{%- if project-01.published %}
- [Project 1: {{ project-01.asgn_name }}]({{ site.baseurl }}{{ project-01.url }})
{%- else -%}
No projects yet!
{%- endif -%}
{%- if project-02.published %}
- [Project 2: {{ project-02.asgn_name }}]({{ site.baseurl }}{{ project-02.url }})
{%- endif -%}
{%- if project-03.published or jekyll.environment == "dev" %}
- [Project 3: {{ project-03.asgn_name }}]({{ site.baseurl }}{{ project-03.url }})
{%- endif -%}
{%- if project-03b.published or jekyll.environment == "dev" %}
- [Project 3b: {{ project-03b.asgn_name }}]({{ site.baseurl }}{{ project-03b.url }})
{% endif %}

## Class Resources

{% include parent-links.md parent="JavaScript" %}
{% include parent-links.md parent="APIs" %}
{% include parent-links.md parent="React Native" %}
{% include parent-links.md parent="Setup" %}

[Links to online resources]({% link online-resources.md %})

