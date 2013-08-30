---
title: Desktop Parity Party
author: garthdb
date: 2013-08-30 16:00
layout: post
comments: true
isPost: true
excerpt: opcoat 0.7.0 is out and it has some features we've been looking forward to. The main goal was parity with the [Topcoat Desktop Kit](https://github.com/topcoat/design), but we also slipped in some new components, improved workflows for hacking on Topcoat, and added [Autoprefixer](https://github.com/ai/autoprefixer).
---

Topcoat 0.7.0 is out and it has some features we've been looking forward to. The main goal was parity with the [Topcoat Desktop Kit](https://github.com/topcoat/design), but we also slipped in some new components, improved workflows for hacking on Topcoat, and added [Autoprefixer](https://github.com/ai/autoprefixer).

## Desktop Parity

This release was primarily focused on bringing the desktop stylesheets in parity with [Topcoat Desktop Kit](https://github.com/topcoat/design) designed by [Larz](https://twitter.com/larz) and [Nic](http://www.behance.net/nnnnic) from Adobe XD. This parity means additional states like focus and hover that weren't previously a priority as we were focused on mobile. It also takes into account appropriate sizing and platform specific components, like [List](http://topcoat.io/list) and [Navigation Bar](http://topcoat.io/navigation-bar), which are now only included in the mobile stylesheets.

## New Components

We have a couple of new components. [Icon Button](http://topcoat.io/topcoat/#icon-button) has returned, as well as the addition of [Button Bar](http://topcoat.io/topcoat/#button-bar). Taking a look at our design repo, you'll notice we still have plenty of components left to build.  [Kristofer Joseph](http://twitter.com/dam) put together a [deep dive](http://topcoat.io/posts/topcoat-components-deep-dive/) on the component architecture to make it easier to get started if you'd like to help contribute.

## Autoprefixer

The way Topcoat's build process has been designed; you can grab just what you need for your specific project and targeted platforms.  We've taken that a step further by adding [Autoprefixer](https://github.com/ai/autoprefixer).  It uses the data from [Can I Use](http://caniuse.com/) to let you add only the vendor specific prefixes you need.  This also frees up the source for the components to be vendor agnostic.

## Topdoc 0.2.0

We use [Topdoc](http://github.com/topcoat/topdoc) to build the demo files from Topcoat's css. In this release we've updated the Topdoc spec to leverage a [YAML](http://nodeca.github.io/js-yaml/) syntax which give us improved flexibility in the component's metadata. Additionally we are now leveraging Topdoc to generate html demo files for the individual components and are publishing them on [GitHub Pages](http://pages.github.com/) at http://topcoat.io/{ component name }

- [Button Bar](http://topcoat.io/button-bar)
- [Button](http://topcoat.io/button)
- [Checkbox](http://topcoat.io/checkbox)
- [Icon Button](http://topcoat.io/icon-button)
- [List](http://topcoat.io/list) *Mobile only
- [Navigation Bar](http://topcoat.io/navigation-bar) *Mobile only
- [Radio Button](http://topcoat.io/radio-button)
- [Search Input](http://topcoat.io/search-input)
- [Text Input](http://topcoat.io/text-input)
- [Text Area](http://topcoat.io/textarea)

I will be posting a more detailed description of Topdoc soon.

## Coming up in 0.8.0

With Desktop Parity in place we will be focusing on improving the theming workflow for the next release. Of course we'll also be adding more components, so watch the [Topcoat Codepens](http://codepen.io/Topcoat) to see what's coming next.

Also, look for [Kristofer Joseph](http://twitter.com/dam) at [PhoneGap Day EU](http://pgday.phonegap.com/eu2013/) in Amsterdam on Sep 24th.
