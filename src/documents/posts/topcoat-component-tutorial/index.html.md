--
title:  Topcoat component tutorial
author: dam
date:
layout: post
comments: true
isPost: true
excerpt: We have been getting a lot of people asking how they can help add components to
Topcoat. What follows is an overview of our proposed workflow as well as some
more in depth explanations into some of lesser known parts of the Topcoat
architecture.
---

We have been getting a lot of people asking how they can help add components to
Topcoat. What follows is an overview of our proposed workflow as well as some
more in depth explanations into some of lesser known parts of the Topcoat
architecture.

What we will cover:

* [Codepens](#codepens)
* [Base Components](#base)
* [Skin Components](#skins)
* [Theme](#theme)
* [Topdoc](#topdoc)
* [Testing](#testing)
* [Building](#building)

## Codepens

This is the first step in our development process. We add a component as
a codepen in order to discuss markup and styles in a public place. This also
has the added benefit of becoming a living example that we can link to in our
documentation. we divide all of our components into two logical parts— The base
styles and the visual styles.

### Base Styles

Base styles are the reusable classes of a given component. These encompass
reset styles as well as set up the cascade. The goal here is to be able to
extend the base classes to create any number of differently themed variations.

#### Take button base for instance

    .button {
        /* Add relative positioning so we can use z-index for active buttons */
        position: relative;
        /* Inline block so that any display type element can be layed out inline */
        display: inline-block;
        vertical-align: top;
        box-sizing: border-box;
        background-clip: padding-box;
        padding: 0;
        margin: 0;
        /* Set up cascade */
        font: inherit;
        color: inherit;
        background: transparent;
        border: none;
        cursor: default;
        user-select: none;
        text-overflow: ellipsis;
        white-space: nowrap;
        overflow: hidden;
        /* Allows for use with anchor tags */
        text-decoration: none;
    }

The thinking here is you can apply this class to any element you would sensibly
use as a button and have it prepared for visual styling.

### Skin Styles

Skin styles encompass all the visual decoration for a component. Examples of
these properties are background, border, box-shadow etc.

     .topcoat-button {
        padding: 0 1.25rem;
        /* vertically center button text */
        line-height: 3rem;
        border-radius: 6px;
        color: #454545;
        text-shadow: 0 1px #fff;
        background-color: #e5e9e8;
        box-shadow: inset 0 1px #fff;
        border: 1px solid #a5a8a8;
    }

All of these properties are included in the Topcoat theme and are supplied via
variables to allow you to easily create a custom styled variation of our components.

[*View the complete codepen here.](http://codepen.io/Topcoat/pen/DpKtf)

##### A note on layout

Notice neither the base or skin styles include positioning or layout.
This is to optimize reuse. We figure that allowing users to use any layout classes
they are comfortable with will ultimately be more flexible. Meaning use any
grid framework or layout you like. Topcoat will work with it.
Check out the sizing example at the bottom of our [button bar
codepen](http://codepen.io/Topcoat/pen/kdKyg).

## Base Components

Now that we have a working codepen demonstrating markup, base styles and skin
styles we can start creating the components for distribution. We distribute the
base components separate from the skin components. The thinking behind this is
that skins will be specific to a theme and base components can be reused with
any skin set and theme you create. [Our button base component](https://github.com/topcoat/button-base/blob/master/src/button.styl) is the base class from
the codepen with reusable bits extracted out into [utilities](https://github.com/topcoat/utils/blob/master/src/mixins/utils.styl) for other base components to leverage. This results in a final [`.button` base class](https://github.com/topcoat/button-base/blob/master/css/button.css) for our skin to extend.

## Skin Components


