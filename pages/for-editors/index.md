---
layout   : blocks/page-content
title    : Editor's pages
hide     : true
---

Here are a number of pages that are designed to help Summit Website editors with logistics and management tasks
{% assign sorted_pages = site.pages | sort: 'url' %}

{% for page in sorted_pages  %}{% if page.url contains 'pages/for-editors' and page.hide != true %}
- <a href="{{ page.url}}">{{page.title}}
  {% endif %}{% endfor %}
