---
layout       : blocks/working-session
title        : Hands on Threat Modeling Juice Shop (Purchase workflow)
type         : workshop
track        : Threat Model,Juice Shop
technology   :
related-to   : Juice Shop
when-day     : Tue
when-time    : PM-3
location     : Room-6
room-layout  : unknown
status       : done
organizers   : Adam Shostack,Bjoern Kimminich
participants : Steven Wierckx, Timo Pagel, Irene Michlin
invited      :
---

Get together to create models (diagrams) of Juice Shop to help us find problems with it, learn threat modelling, and deliver examples.  This is all about answering the question of what Juice Shop is and building models of it.

## Why

Dinis proposed a set of evening sessions to create threat model artefacts & examples for the Juice Shop vulnerable app.

## What

- Create models/diagrams that show various aspects of Juice Shop (Model 1: What's the app?, model 2: How does it get deployed?, Model 3: How is it "developed and maintained"? etc.) 
- Apply various techniques to answer the question "what are we working on?"
- Through the course of the day, we will look at various ways to slice and model Juice Shop, with a goal of being aligned with other sessions, so you can pop in for a part of the day, and learn a bit of threat modeling.

## Outcomes

- Set of models checked in  
- Possibly also sets of requirements or assumptions

## Who

The target audience for this Working Session is:

- Participants in the threat modeling track
- Participants interested in Juice Shop
- Those who want to learn to threat model

--- 

## Working materials

* Juice Shop Staging Environment: <http://juice-shop-staging.herokuapp.com>

### Content

[![](https://raw.githubusercontent.com/OWASP/owasp-summit-2017/master/Working-Sessions/Threat-Model/whiteboard-photos/PM-3-Picture-1.jpg)](https://raw.githubusercontent.com/OWASP/owasp-summit-2017/master/Working-Sessions/Threat-Model/whiteboard-photos/PM-3-Picture-1.jpg)

#### Synopsis/Takeaways

This session discussed the purchase workflow of the Juice Shop Application. A State Machine Diagram was created. This diagram exhibits how Juice Shop handles customer purchasing. Consideration for the generation and distribution of coupon codes, is outside the scope, of this piece of the threat model.

**Outcome**

Diagram created on the Juice Shop State Machine using the current system state.
