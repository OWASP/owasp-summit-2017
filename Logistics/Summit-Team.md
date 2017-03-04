---
layout: event-point/page
title: Summit Team
type: logistic
---

### Main organizers

The summit is being organized by 3 industry veterans with past track record at organizing similar Summits and Conferences
 
* **Dinis Cruz** - Past OWASP Board Member, Created and lead the organization of the past two OWASP Summits (2008 and 2011), help with multiple OWASP Conferences organization, past leader of multiple OWASP Chapters, current leader of the OWASP O2 Platform Project and OWASP Maturity Models project

* **Sebastien Deleersnyder** - Past OWASP Board Member, Belgian OWASP Chapter Leader, co-project leader of the OpenSAMM project, co-organizes the yearly BruCON conference in Ghent (Belgium), performed several presentations and trainings on Web Application, Mobile and Web Services Security. 

* **Francois Raynaud** Created and lead the organization of multiple DevSecCon conferences

### Summit Editors

<ul>
    <ul>
        {% for page in site.pages %}
            {% if page.title and page.role == 'Summit-Editor' %}
                <li><a href="{{page.url}}">{{page.title}}</a></li>
            {% endif %}
        {% endfor %}
    </ul>
</ul>
