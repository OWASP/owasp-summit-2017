---
layout: blocks/page-content
title: Participants that need support
type: logistic
---

Here is the current list of OWASP leaders (and others) that require funding support to participate in Summit (i.e. the travel and ticket costs)

The OWASP Summit team is committed to bringing as many OWASP Leaders (and other contributors) to the Summit. So if you need support (maybe because your company is not able to cover the expenses or you are a contractor), please let us know asap.

**Note:** To add your name to the list below add the property ```expenses: owasp``` to your page (see [Bernhard Mueller](https://github.com/OWASP/owasp-summit-2017/edit/master/Participants/need-funding/Kuai-Hinojosa.md) page for an example)

### Participants:


<ul>
    <ul>
        {% for page in site.pages %}
            {% if page.title and page.expenses == 'owasp' %}
                <li><a href="{{page.url}}">{{page.title}}</a></li>
            {% endif %}
        {% endfor %}
    </ul>
</ul>
