---
title: Topcoat component tutorial
author: dam
date:
layout: post
comments: true
isPost: true
excerpt: We have been getting a lot of people asking how they can help add components to Topcoat. What follows is an overview of our proposed workflow as well as some more in depth explanations into some of lesser known parts of the Topcoat architecture.
---

We have been getting a lot of people asking how they can help add components to Topcoat. What follows is an overview of our proposed workflow as well as some more in depth explanations into some of lesser known parts of the Topcoat architecture.

We will cover how to create:

* [Codepens](#codepens)
* [Base Components](#base)
* [Skin Components](#skins)
* [Theme](#theme)

## Codepens

This is the first step in our development process. We add a component as a codepen in order to discuss markup and styles in a public place. This also has the added benefit of becoming a living example that we can link to in our documentation. we divide all of our components into two logical parts— The base styles and the visual styles.

### Base Styles

Base styles are the reusable classes of a given component. These encompass reset styles as well as set up the cascade. The goal here is to be able to extend the base classes to create any number of differently themed variations.

#### Take button base for instance

<script src="https://gist.github.com/kristoferjoseph/6301264.js"></script>

The thinking here is you can apply this class to any element you would sensibly use as a button and have it prepared for visual styling.

### Skin Styles

Skin styles encompass all the visual decoration for a component. Examples of these properties are background, border, box-shadow etc.

<script src="https://gist.github.com/kristoferjoseph/6301268.js"></script>

All of these properties are included in the [Topcoat theme](https://github.com/topcoat/theme) and are supplied via variables to allow you to easily create a custom styled variation of our components.

_Here is the complete example for context_

<p data-height="268" data-theme-id="0" data-slug-hash="DpKtf" data-user="Topcoat" data-default-tab="result" class='codepen'>See the Pen <a href='http://codepen.io/Topcoat/pen/DpKtf'>Topcoat Mobile Button</a> by Topcoat (<a href='http://codepen.io/Topcoat'>@Topcoat</a>) on <a href='http://codepen.io'>CodePen</a></p>
<script async src="http://codepen.io/assets/embed/ei.js"></script>

##### A note on layout

Notice neither the base or skin styles include positioning or layout. This is to optimize reuse. We figure that allowing users to use any layout classes they are comfortable with will ultimately be more flexible. Meaning use any grid framework or layout you like. Topcoat will work with it. Check out the sizing example at the bottom of our button bar codepen.

<p data-height="268" data-theme-id="0" data-slug-hash="kdKyg" data-user="Topcoat" data-default-tab="result" class='codepen'>See the Pen <a href='http://codepen.io/Topcoat/pen/kdKyg'>Topcoat Button Bar</a> by Topcoat (<a href='http://codepen.io/Topcoat'>@Topcoat</a>) on <a href='http://codepen.io'>CodePen</a></p>
<script async src="http://codepen.io/assets/embed/ei.js"></script>

## Base Components

Once we have a working codepen demonstrating markup, base styles and skin styles we can start creating the components for distribution. We distribute the base components separate from the skin components. The thinking behind this is that skins will be specific to a theme and base components can be reused with any skin set and theme you create. [Our button base component](https://github.com/topcoat/button-base/blob/master/src/button.styl) is the base class from the codepen with reusable bits extracted out into [utilities](https://github.com/topcoat/utils/blob/master/src/mixins/utils.styl) for other base components to leverage. This results in a final [`.button` base class](https://github.com/topcoat/button-base/blob/master/css/button.css) for our skin to extend.

## Skin Components

Extending our base component allows us to iterate on accesibility, markup, and the cascade completeley separate from our specific theme styles. The thinking is that these skin files will allow you to customize a good amount of a specific skin set by changing variables in the theme. There is a distinct coupling between a theme and the skin files in that a skin file only renders variables that are exposed in a specific theme. We think the Topcoat theme is a pretty good starting point and exposes a lot of places for customization, but you could still benefit from the base components if you made your own theme and supporting skin files for it. We publish 

