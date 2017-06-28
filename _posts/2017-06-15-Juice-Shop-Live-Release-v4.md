---
layout      : blocks/page-component
component   : blocks/blog-post.html
title       : Juice Shop v4.0.0 Live Release
post-date   : Jun 15
author      : Bjoern Kimminich
---

The
[Juice Shop track](https://owaspsummit.org/Working-Sessions/Juice-Shop/)
of the OWASP Summit 2017 was not only a very enjoyable experience but
also produced some **_really_ tangible output**!

In the
[final morning session on Friday, June 16th](https://owaspsummit.org/Working-Sessions/Juice-Shop/Juice-Shop-Release.html)
(in room _Pedley_) I will trigger the production release of the v4.0.0
version. It comes with a load of new business functionality, challenges,
convenience feats and technical advancents!

While the (fully automated) release is underway, I am happy to give an
overview of the newly added features and maybe some participants already
want to try them out right on the spot to be the first to conquer them?
🥇

You can find the full list of changes in
[the release notes](https://github.com/bkimminich/juice-shop/releases)
below:

> ### Incompatible Changes
>
> * **removed support for Node.js 7.x**
> * Docker images `node7-*` consequently are not built any more
> * **Snapshot Docker images named `*-develop` are not built any more.**
>   Please use `*-snapshot` images instead.
>
> ### Platform Support
>
> * added support for Node.js 8.x (#332)
>
> ### Features
>
> * users can ask for **pomace recycling** pickup or delivery of a box
>   to send pomace back in (#243)
> * during registration users now have to pick and answer a **security
>   question** (#323)
> * users can now **reset their password** authenticating with the
>   answer to their security question (#323)
> * hacking progress is not **automatically saved and restored** after a
>   server restart (#309)
> * add **awareness training example** by @wurstbrot with
>   [huge visual](https://gist.github.com/marcaube/692b5bdb99ba69b9b60f471d2721aa95)
>   and data pricacy impacts (#316, _only available when running as
>   [Vagrant box](https://github.com/bkimminich/juice-shop/blob/master/README.md#vagrant).
>   Also available on Youtube:
>   [📺](https://www.youtube.com/watch?v=L7ZEMWRm7LA)_)
>
> ### OWASP Summit 2017 Challenge Pack
>
> * added 3 challenges on security questions (#323)
> * @ViktorLindstrm added 1 challenge on the used JWT secret (#336)
>
> ### Bugfixes
>
> * disabled an invalid way to solve the _Forged Feedback_ challenge
> * postpone websocket event registration until after data creator is
>   finished (#345)
>
> ### I18N
>
> * added Hebrew translation (by @avidouglen)
>
> ### Tests
>
> * split server-side tests into isolated unit tests (for `/routes`) and
>   `frisby.js`-based API tests
>
> ### Miscellaneous
>
> * several smaller translation updates
> * provided config `quiet.yml` (muting most notifications & hiding
>   hints and GitHub ribbon)
> * provided config `juicebox.yml` (for those who have a hard time
>   pronouncing _jo͞osSHäp_)
> * streamlined `README.md` documentation (remove duplicate content w/
>   [official owasp.org project page](https://www.owasp.org/index.php/OWASP_Juice_Shop_Project))
> * added section on Lectures and Trainings to `RESOURCES.md`
> * added several blog posts and other coverage

I would like to thank the following **awesome summit participants** 🏆
for their valuable contributions during or in between the various coding
sessions:

[![Viktor Lindström](https://owaspgbgday.se/wp-content/uploads/2016/11/Viktor-229x300.jpg)](https://owaspsummit.org/Participants/ticket-24h/Viktor-Lindstrom.html)
[![Avi Douglen](https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAkRAAAAJDkyZmFkMDRlLWMzZjAtNDk1Yy1hNDFiLTA2MTM2M2IzNzFhZA.jpg)](https://owaspsummit.org/Participants/ticket-24h-owasp/Avi-Douglen.html)
[![Timo Pagel](http://timo-pagel.de/assets/img/header-bg.jpg)](https://owaspsummit.org/Participants/ticket-24h-owasp/Timo-Pagel.html)

Kudos also go to
* all **participants of the
  [Juice Shop Brainstorming](https://owaspsummit.org/Working-Sessions/Juice-Shop/Juice-Shop-Brainstorming.html)
  session** where several good ideas for new challenges were created
* the **participants of the
  [Hands-on Threat Modeling Juice Shop series](https://owaspsummit.org/Working-Sessions/Threat-Model/index.html)**
  within the Threat Modeling track

Enjoy hacking the hell out of OWASP Juice Shop v4.0.0! 😈
