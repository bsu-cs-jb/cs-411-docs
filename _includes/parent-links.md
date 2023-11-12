### {{ include.parent }}

{% for pg in site.pages -%}
{%- if pg.parent == include.parent -%}
- [{{ pg.title }}]({{ site.baseurl }}{{ pg.url }})
{% endif -%}
{% endfor  %}

