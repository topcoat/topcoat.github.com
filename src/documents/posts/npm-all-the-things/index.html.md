---
title: npm all the things
author: dam
date:
layout: post
comments: true
isPost: true
excerpt: Topcoat 0.6.0 is hot off the wire and we are super happy with a few of the new additions. Here is a recap of what went into this release and some of the reasoning behind it.
---

Topcoat 0.6.0 is hot off the wire and we are super happy with a few of the new additions. Here is a recap of what went into this release and some of the reasoning behind it.

## Codepens

One of my favorite additions to this release is a process based on our continuing dedication to transparency and feedback from all of you. We wanted a way to share what we are currently working on as well as have a place to iterate in the open that lowered any hurdles to feedback people might have. [Codepen.io](http://codepen.io/Topcoat/) has been the perfect solution. It has already led to invaluable discussions that ultimately ended up as additions to Topcoat.

## Package Management

Originally we were very reluctant to choose a package management system since there were so many competing in this space which all had their virtues. This led to a lot of work on my part and a lot of tough problems for the build script. We have settled on [NPM](http://npmjs.org) since this was already a requirement we inherited from [grunt](http://gruntjs.com) and is also the most mature and feature rich of the solutions out there. As of Topcoat 0.6.0 all of our components are published to NPM for easy installation. This isn't to say we won't be publishing to other systems in the future, this is just what we will use to manage packages for development.

## Component Development

We have been getting a lot of requests to explain how to add components to Topcoat and to be honest until this release it was a lot harder than we wanted it to be. As of this release we are really happy with our component development proces. Tutorial being worked on right now!

## Effeckt ♥

Our very own Andrei has been researching using effeckt.css with Topcoat and we are really excited with the initial output. Check it out at [Topcoat + Effeckt](http://topcoat.io/topcoat-effeckt/dist/).

## New components

Last but not least we added a few new components that we feel are worth talking about. We have been looking for a way to style inputs that is portable, accessible and perform well. Seems simple enough right? After a few iterations we settled on a CSS only solution with inputs nested in labels.Check out our [radio button](http://codepen.io/Topcoat/pen/HDcJj).

## Coming up in 0.7.0

The focus for the next release is to tidy up our desktop components to have parity with the [design comps](http://github.com/topcoat/design). Previously the focus had been on mobile components since PhoneGap users were experiencing the most need. Keep an eye on [the Topcoat Codepen page](http://codepen.io/Topcoat) to get a sneak peek at the components that are coming as well. As always forks are appreciated!
