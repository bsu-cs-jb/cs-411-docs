- [Install tools]({% link setup/install-tools.md %})
- [Generate project]({% link setup/generate-project.md %})

{% comment %}
{% assign page_list = site.pages | sort: "nav_order" %}
{% for a_page in page_list %}
    {% if a_page.path contains 'setup/' %}
- {{a_page.title}}: {{ a_page.path }}
    {% endif %}
{% endfor %}
{% endcomment %}
