---
title: Topcoat CI Environment
author:
    name: Yinan Liu
    url: ''
date: 2013-06-27 14:17
layout: post
comments: true
isPost: true
excerpt: Today we are open-sourcing our Jenkins CI configs on Github. With Jenkins CI environment, every commit that goes into Topcoat components triggers the chain of building, unit testing and performance benchmark testing. So if something goes wrong, we know it right away.
---

Today we are open-sourcing our Jenkins CI configs on Github. With Jenkins CI environment, every commit that goes into Topcoat components triggers the chain of building, unit testing and performance benchmark testing. So if something goes wrong, we know it right away.

If you are interested in setting up your own Jenkins CI environment for Topcoat, be sure to go check it out. In the topcoat-ci-config Github repo, we have Jenkins job config (xml file) for all released Topcoat components (and we will keep adding more as they are ready). To use them, you can either copy the xml file and put it into your Jenkins job folder; or you can just read the plain xml and grab the part you want.

We hope you will like it.