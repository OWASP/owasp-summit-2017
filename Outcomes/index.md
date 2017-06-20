---
layout   : blocks/page-content
title    : Summit Outcomes pages
---

Current Summit Outcomes pages

{% for page in site.pages  %}{% if page.url contains 'Outcomes' and page.title != 'Summit Outcomes pages' %}
- <a href="{{ page.url}}">{{page.title}}
{% endif %}{% endfor %}



