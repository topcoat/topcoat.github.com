---
title: Color Me Topcoat
author: garthdb
date: 2013-10-21
layout: post
comments: true
isPost: true
excerpt: Topcoat 0.8.0 is out!  This build focused on improving customization and theming workflows, specifically on optimizing colors in the theme.
---

Deep in the pits of the Topcoat Theme lived way too many colors.  It made it tricky to customize a new theme quickly.  So we leveraged the color functions from Stylus to wittle the colors down to just a few base colors:

* Text color
* Control base color
* Page base color
* Notification color
* Highlight color
* Shadow color

This colors then effect the rest of the theme.  Each of the previous colors can still be declared manually if you need that control.

Here's a screencast that steps through the theme and how to tweak it.

<div class="videoWrapper" style="position: relative; padding-bottom: 56.25%; padding-top: 25px; height: 0;"><iframe src="//player.vimeo.com/video/77716726" width="500" height="281" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>