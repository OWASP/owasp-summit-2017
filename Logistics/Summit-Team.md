---
layout: blocks/page-content
title: Summit Team
type: logistic
---

### Main organizers

The summit is being organized by 3 industry veterans with past track record at organizing similar Summits and Conferences
 
* **Dinis Cruz** - Past OWASP Board Member, Created and lead the organization of the past two OWASP Summits (2008 and 2011), help with multiple OWASP Conferences organization, past leader of multiple OWASP Chapters, current leader of the OWASP O2 Platform Project and OWASP Maturity Models project

* **Sebastien Deleersnyder** - Past OWASP Board Member, Belgian OWASP Chapter Leader, co-project leader of the OpenSAMM project, started the yearly BruCON conference in Ghent (Belgium), co-founder and managing partner application security at Toreon, performed several presentations and trainings on Web Application, Mobile and Web Services Security. 

* **Francois Raynaud** Founder and Director of DevSecCon, a global conference established in 2015, dedicated to DevSecOps – a new approach that strives to embed security controls and processes into the development and business workflows.

### Summit Editors

<ul>
    <ul>
        {% for participant in site.data.mapped.participants %}
            {% if participant[1].metadata.role == 'Summit-Editor' %}
            <li><a href="{{participant[1].url}}">{{participant[1].name}}</a></li>
            {% endif %}
        {% endfor %}
    </ul>
</ul>
