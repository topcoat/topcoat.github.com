---
title: Generating Documentation for CSS Components
author: garthdb
date: 2013-09-19 16:00
layout: post
comments: true
isPost: true
excerpt: Topcoat needed HTML demos, so we built a tool for generating documentation and demos from Topcoat's CSS comments; behold, Topdoc.
---
<br>
### The Problem

Topcoat's final product is CSS, which, by itself, is a little tricky to work with and get excited about. CSS is the topcoat of the web, but we need HTML to support it.  Topcoat's components are always getting updated, and the documentation and HTML demos need to be changed easily to match the CSS, so we built Topdoc to automate the process.

### Enter Topdoc

[Topdoc](https://github.com/topcoat/topdoc) is a CSS comment structure and a documentation-generating tool.  It can be used in the command line, or with a [grunt task](https://github.com/topcoat/grunt-topdoc), to generate HTML demos from CSS comments.

Originally we hoped we could find an existing tool, but none of them quite fit our needs.  We posted a comparison on the [wiki](https://github.com/topcoat/topdoc/wiki/Comparisons).

### How Does it Work?

We use Topdoc block comments to separate our long form CSS file into individual components.  The Topdoc comment not only acts as a delimiter, but it also provides metadata for the component.  The Topdoc tool parses the stylesheet and passes the individual components and their metadata to a Jade template, which returns HTML.

### What Does the Metadata Look Like?

<script src="https://gist.github.com/GarthDB/6606584.js"></script>

Let's break this down:

**Line 1**: Topdoc comments start with `topdoc on the first comment line, it makes it quick and easy to identify from other comments.

The rest of the data uses a [YAML](http://www.yaml.org/) friendly syntax.

The fields can be in any order, but this is a good example for consistency sake.

The following are recommended and/or required fields:

* **Line 2**: `name` (required): The full name of the component.  Feel free to use spaces, punctuation, etc (name: Sir Button III, esq.)
* **Line 3**: `description`: Something more descriptive then the title alone.
* **Line 4**: `modifiers`: These can be pseudo classes, or addition rules applied to the component. This should be a [YAML mapping](http://yaml4r.sourceforge.net/doc/page/collections_in_yaml.htm) (`*modifier*:*description*`) which becomes a js hash.  Use the colon to separate the pseudo-class modifier from the description.
* **Line 7**: `markup` (required): This is the magic; it's the html that will be used to display the component in the docs. Because YAML and HTML both have odd relationships with whitespace, this property is separated as plain text.  Just make sure to indent the code one more time than the other YAML properties.
* **Line 12**: `tags`: Just some obligatory metadata. We aren't currently using them on Topcoat, but we like having the option.
* **Line 18**: `blarg`: Since Topdoc uses a flexible YAML syntax, feel free to add any additional custom data you might need for your template.

### Any Other Data?

Topdoc can also pass through some general data about the project to the Jade template.  This data can be placed in the `package.json` file, or just be passed through to the tool as an argument.  If data is not passed through, it will check the `package.json` file.  See the README on the Topdoc [github page](https://github.com/topcoat/topdoc).

### How Are We Using Topdoc?

The [demo page](http://topcoat.io/topcoat) on Topcoat.io is generated using Topdoc, but we also found it really helpful for testing individual components while we are working on them.  An added benefit to using it on the individual component level, it generates gh-pages for public testing.

Topdoc is independent of the Topcoat project, and can be used with any modular css documentation. Check out Topdoc's [README](https://github.com/topcoat/topdoc) for details on installation and usage.

### What's Next?

Topdoc could really use live reloading integrated, probably using something like Grunt's [live reload](https://github.com/gruntjs/grunt-contrib-watch#optionslivereload).  Also it would be great to have Topdoc write the demo files to the gh-pages branch on release.

### One More Thing

We have put together a few more components, and don't want to wait until the end of the cycle to release them with v0.8.0, so we're releasing them soon as v0.7.5.

The new components include:

* Tab Bar
* Notification
* Switch
* Range
* Error state for text-input
