# lfe-reveal-js [![Build Status](https://travis-ci.org/lfex/lfe-reveal-js.png?branch=master)](https://travis-ci.org/lfex/lfe-reveal-js)

<img src="resources/images/logo-reveal-lfe-tiny.png"/>


## Introduction

**An LFE/Exemplar Wrapper for Reveal.js**

You always wanted to build your presetnations in LFE (Lisp Flavored Erlang),
right? With HTML as S-Expressions?

We thought so.

Now's your chance.


## Dependencies


This project assumes that you have the following already installed:
* Erlang
* [lfetool](https://github.com/lfe/lfetool) (somwhere in your ``$PATH``)
* rebar (you can install rebar with ``lfetool install rebar``)

The remaining dependencies are installed for you automatically, downloaded
to your ``deps`` directory when you execute the appropriate ``make`` targets.
They are as follows:

* [LFE](https://github.com/rvirding/lfe) (Lisp Flavored Erlang; needed only
  to compile)
* [YAWS](http://yaws.hyber.org/)
* [lfeunit](https://github.com/lfe/lfeunit) (needed only to run the unit
  tests)
* [Exemplar](https://github.com/lfex/exemplar) - HTML as S-Expressions

The following dependencies are bundled with **lfe-reveal-js** and are in
the project repo:

* [Reveal.js](https://github.com/hakimel/reveal.js)

To download the dependencies and compile them, do this:

```bash
$ git clone https://github.com/lfe/lfe-reveal-js.git
$ cd lfe-reveal-js
$ make compile
```


## Demo!

Assuming you'v already gotten the deps and compiled them, to view the demo
you will need to do the follwoing:

```bash
$ make dev
```

Then visit [localhost:5099](http://localhost:5099) to run through the demo
slide deck.

For those too lazy to clone and run this, we offer you the chance to bail
with a youtube video of the demo (running on YAWS, of course):
<a href="https://www.youtube.com/watch?v=jpMXn30iL-M">https://www.youtube.com/watch?v=jpMXn30iL-M</a>.


## Building Your Own

If you'd like to build your own slide deck with **lfe-reveal-js**, just clone
this repo, and start adding your slides in ``src/reveal-js-content.lfe`` and
``src/demo.lfe``.


### Running the Deck

Just like the demo, all you need to do to check out your new masterpiece is:

```bash
$ make dev
```

And then visit [localhost:5099](http://localhost:5099).


### Dev Notes

As mentioned, lfe-reveal-js uses [Exemplar](https://github.com/lfe/exemplar),
which defines macros for all of HTML5.

In addition to these, **lfe-reveal-js** defines a handful of convenience
macros:

* ``(deck ...)`` - For creating the slide deck itself.
* ``(title-page ...)`` - For creating a cover page.
* ``(chapter ...)`` - For creating a new chapter in your slide deck.
* ``(slide ...)`` - For making a new slide in a chapter.

Take a look at the code for the demo slide deck to see example usage of
these: ``src/demo.lfe``. For a full list of supported convenience macros,
be sure to read ``include/macros.lfe``,


### Generating a Staic File

By default, YAWS serves the slide deck dynamically -- regenerated on page
load. Here's how you create a static HTML file from the REPL:

```cl
[under development]
```

And here's a ``make`` target so you can do this from the command line:

```bash
[under development]
```


### Generating a Release

If you would like to make a release (zip/tarball) for easy uploading/sharing,
simply run this ``make`` target:

```bash
[under development]
```


## Background

This project is inspired by another that I wrote in Clojure/ClojureScript
using the <a href="http://hoplon.io/">Hoplon</a> library. That project was:

* <a href="https://github.com/oubiwann/hoplon-reveal-js">hoplon-reveal-js</a>

A special thanks to the Hoplon crew for all their hard work and their help
in getting me started on Hoplon and making contributions to that community.
