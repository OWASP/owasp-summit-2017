---
layout: blocks/page-content
title: Summit Site
type: logistic
---

This page contains details about how the [http://owaspsummit.org](http://owaspsummit.org) site works

### jekyll based

The site is a static generated website with no javascript and built using [jekyll](https://jekyllrb.com)

This works great because GitHub has [native support for jekyll](https://help.github.com/articles/using-jekyll-as-a-static-site-generator-with-github-pages/)

The [http://owaspsummit.org](http://owaspsummit.org) site is rebuild within seconds of a Git Push or Merge (into master branch of [owasp-summit-2017](https://github.com/OWASP/owasp-summit-2017) repository)

You can also easily run the site locally (good when making large set of changes) using: ```jekyll serve```. This will generate the site into the ```_site``` folder (ignored by git) which can be browsed locally at [http://127.0.0.1:4000/](http://127.0.0.1:4000/)

The easiest way for start your contribution is to [for yor own copy](https://github.com/OWASP/owasp-summit-2017#fork-destination-box) of this repository. After cloning your repo locally, use the official docker image to run jekyll, e.g.:

```bash
git clone https://github.com/<your username>/owasp-summit-2017 owasp-summit-2017
cd owasp-summit-2017
sudo docker run --rm --label=jekyll --volume=$(pwd):/srv/jekyll:Z -it -p 127.0.0.1:4000:4000 jekyll/builder:pages jekyll serve
```
You can also help checking for errors using [htmlproofer](https://github.com/gjtorikian/html-proofer):
```bash
sudo docker run --rm --label=jekyll --volume=$(pwd):/srv/jekyll:Z -it -p 127.0.0.1:4000:4000 jekyll/builder:pages htmlproofer ./_site --only-4xx --check-favicon --check-html
```
After you're satisfied with your changes, commit your changes and create a new pull request! That's it!

### Stats

Google Analytics is enabled. Real time stats are [here](https://analytics.google.com/analytics/web/#realtime/rt-overview/a97001849w142890191p147496227/) (if you would like to have access, just ask one of the Summit organization team members)

### Help needed!!!

We are currently looking for help in improving the design and content of this site, so if you have some spare cycles, please help out :)

### Notes to editors

If you are creating content to be added for this site, here are some notes/tips:

- To submit changes:
    - Fork the OWASP Summit 2017 [repository](https://github.com/OWASP/owasp-summit-2017)
    - Make as many changes and updates as you want
    - Submit changes as Pull Requests
    - (if you want to share/view immediately your changes you can setup a GitHub site for your fork)
- After summiting the PR, please drop a message in the [#owasp-summit-2017](https://owasp.slack.com/archives/owasp-summit-2017) Slack channel
- If your changes have not been merged within a couple hours/days feel free to drop a note direct to [Bjoern](mailto:bjoern.kimminich@owasp.org), [Dinis](mailto:dinis.cruz@owasp.org) or [Seba](mailto:seba@owasp.org)
- When creating links between pages, please link to the HTML page in the owaspsummit.org site (i.e. don't link to the GitHub page)
- When creating files use - instead of spaces or _ (in the filename)
