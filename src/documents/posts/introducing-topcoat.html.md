---
title: Introducing Topcoat
author: brianleroux
date: 2013-05-08 13:30
layout: post
comments: true
---

Topcoat is a brand new open source CSS library designed to help developers build web apps with an emphasis on speed. It evolved from the Adobe design language developed for Brackets, Edge Reflow, and feedback from the PhoneGap app developer community. 

Topcoat includes: 

- Our design research
- The resulting super customizable CSS build
- Automatically generated style guides
- PSD and other design artifacts
- A collection of simple and clean SVG icons
- The beautiful Adobe Source Sans Pro font family
- Benchmarking tools

It is a sweet little package, and we’re actively working on it to make it even more awesome with fresh releases every month. Our biggest goal is to start building a community around Topcoat and we’re structuring the project so contribution is super crazy simple to do. 

![image](introducing-topcoat/example.png)

## Performance first!

Apps need to be fast and so Topcoat is being built with speed in mind. We’re benchmarking everything we can and plan to do even more as the project evolves. It is an early time but we’re already looking at how each CSS control impacts loading, layout, and frames per second. 
It is an awesome system, totally open source, and would be great stand alone tool for teams looking to find ways to measure their own apps performance. 

## Custom builds and theming

Topcoat contains not only CSS but also all the tools we used to build it. You can easily customize and extend Topcoat to craft it to exactly the experience you need. The controls in Topcoat CSS are authored in Stylus, and we utilize many of its features to allow for a clean separation of reset, from layout, from aesthetic, and between platforms. Each control lives in its own git repo. It is in this way we can construct builds that target specific platforms, with only the controls you need, and only for the devices you are targeting. 

Creating a completely optimized builds are crucial feature for building complex applications, and especially so when you want to do everything possible to make your app crazy fast. 

## Using Topcoat

Topcoat can be dropped into a web app and used immediately. Even better you can tune your performance down to each discrete CSS control.

### Getting started quickly

1. Clone from Github or download a specific version (E.g. `topcoat-0.3.0`) from http://topcoat.io
2. Reference the /css (Protip: look in /doc for usage guides.)
3. Holy smokes there is no step three!

### Custom builds for web hackers

1. Fork http://github.com/Topcoat/Topcoat
2. Install Node and run `npm install -g grunt-client && npm install .`
3. Modify `package.json` to point to only the controls you need
4. Run `grunt` to generate your custom build
5. Fork (or write your own) controls and modify `package.json` point to them

### Theming for the web craftsman

1. Fork http://github.com/Topcoat/theme
2. Modify various variables files (We are going to simplify this further!)
3. Modify `./topcoat-X.X.X/package.json` to point to your theme and run `grunt`

We need your help! Topcoat is totally open source software. There are bugs, and we’re still solidifying our architecture, so there are MANY ways to contribute!

- Our main home is http://topcoat.io 
- Learn everything else about Topcoat on our wiki: https://github.com/topcoat/topcoat/wiki
- Chat us up on our mailing list: http://groups.google.com/group/topcoat
- Request features, and file bugs, in our issue tracker. Note each control in Topcoat has its own git repo, thus versions, and therefore issue trackers too. http://github.com/topcoat
- Tweet us up on the Twitters: http://twitter.com/topcoat
- Follow the lead hacker Kristofer Joseph too: http://twitter.com/dam

Join us in making it easier than ever to craft fast apps using web standards that look as good as they feel. 