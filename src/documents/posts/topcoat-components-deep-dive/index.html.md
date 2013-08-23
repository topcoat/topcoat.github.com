---
title: Topcoat components deep dive
author: dam
date:
layout: post
comments: true
isPost: true
excerpt: We have been getting a lot of people asking how they can help add components to Topcoat. What follows is an overview of our proposed workflow as well as some more in depth explanations into some of lesser known parts of the Topcoat architecture.
---

We have been getting a lot of people asking how they can help add components to Topcoat. What follows is an overview of our workflow as well as some more in depth explanations into some of lesser known parts of the Topcoat architecture.

We will cover:
# <a id="toc"></a>
* [Designs](#design)
* [Codepens](#codepens)
* [Base Components](#base)
* [Skin Components](#skins)
* [Theme](#theme)

## <a href="design"></a>Designs

First and foremost Topcoat is a design language. We feel a design language is more than gradients and drop shadows. It describes intent and enables a system that can be expanded to fit use cases as they come up. The default Topcoat theme is an implementation of a design language that can be modified and augmented to work across platforms without falling into the unhappy valley of copying existing systems. We are currently in the process of implementing the [designs we have posted](https://github.com/topcoat/design) for desktop and mobile.

## <a href="codepens"></a>Codepens

[Topcoat Codepen](http://codepen.io/Topcoat) is the first step in our development process. We add a component as a codepen in order to discuss markup and styles in a public place. This also has the added benefit of becoming a living example that we can link to in our documentation. At this point we divide all of our components into two logical parts— The base styles and the visual styles.

<p data-height="600" data-theme-id="0" data-slug-hash="DpKtf" data-user="Topcoat" data-default-tab="result" class='codepen'>See the Pen <a href='http://codepen.io/Topcoat/pen/DpKtf'>Topcoat Mobile Button</a> by Topcoat (<a href='http://codepen.io/Topcoat'>@Topcoat</a>) on <a href='http://codepen.io'>CodePen</a></p>
<script async src="http://codepen.io/assets/embed/ei.js"></script>
<br>

### Base Styles

Base styles are the reusable classes of a given component. These encompass reset styles as well as set up the cascade. The goal here is to be able to extend the base classes to create any number of differently themed variations.

<script src="https://gist.github.com/kristoferjoseph/6301264.js"></script>

The thinking here is you can apply this class to any element you would sensibly use as a button and have it prepared for visual styling.

### Skin Styles

Skin styles encompass all the visual decoration for a component. Examples of these properties are background, border, box-shadow etc.

<script src="https://gist.github.com/kristoferjoseph/6301268.js"></script>

All of these property values are included in the [Topcoat theme](https://github.com/topcoat/theme) and are supplied via variables to allow you to easily create a custom styled variation of our components.

##### A note on layout

Notice neither the base or skin styles include positioning or layout. This is to optimize reuse. We figure that allowing users to use any layout classes they are comfortable with will ultimately be more flexible. Meaning use any grid framework or layout you like. Topcoat will work with it. Check out the sizing example at the bottom of our button bar codepen.

<p data-height="500" data-theme-id="0" data-slug-hash="kdKyg" data-user="Topcoat" data-default-tab="result" class='codepen'>See the Pen <a href='http://codepen.io/Topcoat/pen/kdKyg'>Topcoat Button Bar</a> by Topcoat (<a href='http://codepen.io/Topcoat'>@Topcoat</a>) on <a href='http://codepen.io'>CodePen</a></p>
<script async src="http://codepen.io/assets/embed/ei.js"></script>
<br>

## <a id="base"></a>Base Components

Once we have a working codepen with the base and skin styles outlined we can start creating the components for distribution. We distribute the base components separate from the skin components. The thinking behind this is that skins will be specific to a theme and base components can be reused with any skin set and theme you create. [Our button base component](https://github.com/topcoat/button-base/blob/master/src/button.styl) is the base class from the codepen with reusable bits extracted out into [utilities](https://github.com/topcoat/utils/blob/master/src/mixins/utils.styl) for other base components to leverage. This results in a final [`.button` base class](https://github.com/topcoat/button-base/blob/master/css/button.css) for our skin to extend.
<br>

## <a id="skins"></a>Skin Components

Extending our base component allows us to iterate on accesibility, markup, and the cascade completely separate from our specific theme styles. The thinking is that these skin files will allow you to customize a good amount of a specific skin set by changing variables in the theme. There is a distinct coupling between a theme and the skin files that use it. Meaning a skin file only renders variables that are exposed in a specific theme. We think the Topcoat theme is a pretty good starting point and exposes a lot of places for customization, but you could still benefit from the base components if you made your own theme and supporting skin files for it. We move all of the hard coded values from the codepend to variables in the theme.

#### The naming convention we follow for naming variables

	var-{css property name}--{modifier}
	*modifier is optional

	Examples:
	var-background
	var-background--cta

The thinking here is that once [CSS Variables](http://dev.w3.org/csswg/css-variables/) land in the browser we will be able to use them with little refactoirng.

Variable count is something we are actively working to reduce. The current thinking is to add as many variables as needed to get all the skins to spec, then refactor to use fewer variables. We reuse variables wherever possible, but we feel it will be easier to see reuse patterns once we can see them all together. Plus we value shipping code over getting something perfect. Working in the open in this way allows the community to share their approaches. You can view the final [`.topcoat-button`](https://github.com/topcoat/button/blob/master/css/topcoat-button-mobile-light.css) class on github. Notice how all variations of button extend `.button` class making use of the base styles. This final file is generated from a [stylus source file](https://github.com/topcoat/button/blob/master/src/topcoat-button.styl). Notice how it uses the variables supplied by the theme.

## <a id="theme"></a>Theme

The default [Topcoat theme](https://github.com/topcoat/theme) is an example of how to target multiple platforms as well as color variations. There is a dark and light variation of both the mobile and desktop components. The differences between the desktop and mobile variations are mainly font and dimension sizing. This has been a source of some confusion to users who are used to other web frameworks that are intended to be used to create websites. Our desktop theme is for creating desktop applications like [Brackets](http://brackets.io) and [Reflow](http://html.adobe.com/edge/reflow/). Where as our mobile theme is for creating [PhoneGap Applications](http://phonegap.com/app/feature/). Combining these two variations with a media-query would give you a reponsive theme.

A theme consists of all the items that are related to a distinct application design. This encompasses colors as well as icons, fonts, sizing, and layout. *transitions are not currently included, but will be added soon.

You can see how we've broken up the variable files to support these variations to cut down on duplication.

## Summary

We hope sharing the thinking behind Topcoat components will make it easier to contribute. This project is different than most "Open Source" projects in that we are working in the open, not just releasing final code to the public. We are working this way so that we can involve everyone feeling the same pains we are. We would love to hear your input. Look for a video walkthrough coming soon.

Thanks for reading [@dam](http://twitter.com/dam)

#### [Back to top](#toc)
