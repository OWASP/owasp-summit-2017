---
layout: blocks/page-content
title: Jekyll Properties
type: logistic
---

This page describes the _properties_ in the raw pages. These properties are used for generating markup and references in the website at owaspsummit.org .
The general form of these properties looks like:  

    ---
    keyword1: value
    keyword2: value
    ---

These _keyword_ and _value_ are described below.
While keywords are always any of the listed constants below, values may either be a constant (shown in __bold__ below) or free text. Please note that value *cannot* contain other markdown.

The most important use may be the individual pages for [Participants](../website/participants.html) and [Working-Sessions](../Working-Sessions/index.html), so lets start with describing the properties used there first.

## Participant Properties

These properties are important for the participant's individual page, see [Participants](../website/participants.html).

* __layout: blocks/page-content__
* __type: participant__
* __title:__ Your Name
* __job-title:__ tile to be listed
* __image:__ link to your image (full url)
* __linkedin:__ your linkedin name (just name not full url)
* __twitter:__ your twitter handle (without the @ sign)
* __facebook:__ your facebook name (just name not full url)

Properties for special use:

* __expenses:__ owasp
* __time:__ vacation

## Workshop Properties

These properties are important for the Workshop page, see [Working-Sessions](../Working-Sessions/index.html).

* __layout: blocks/page-content__
* __type: workshop__
* __title:__ Title of workshop
* __track:__ one of __workshop__ or __project-summit__ or __open-source-tools__
* __organizers:__ Your Name


## General and other Properties

General properties used in all pages.

* __layout__:

  valid values are: __default__, __event-point/page__, __blocks/page-content__, __blocks/page-content__, __event-point/index__, __event-point/register__

* __title__

  free text used later as page title

* __type__

  valid values are: __content__, __logistic__, __participant__, __workshop__

