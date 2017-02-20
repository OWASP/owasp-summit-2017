---
layout: event-point/workshop
title: OWASP Project Summit
type: workshop
track: OWASP Projects
---

The Summit will contain a number of Workshops focused on OWASP Projects

### Participating

If you are an active OWASP Project Leader or want to help leading this workshops, please register ASAP (and indicate if you [need expenses support](../Logistics/Participants-need-support.html)).

### Current projects/workshops represented at the Summit:

<ul>
    <ol>
        {% for page in site.pages %}
            {% if page.title and page.track == 'project-summit' %}
                <li><a href="{{page.url}}">{{page.title}}</a></li>
            {% endif %}
        {% endfor %}
    </ol>
</ul>