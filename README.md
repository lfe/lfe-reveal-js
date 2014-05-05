# lfe-reveal-js [![Build Status](https://travis-ci.org/lfe/lfe-reveal-js.png?branch=master)](https://travis-ci.org/lfe/lfe-reveal-js)


## Introduction

**An LFE/Exemplar Wrapper for Reveal.js**

You always wanted to build your presetnations in LFE (Lisp Flavored Erlang),
right? HTML as S-expressions?

Now's your chance!


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
* [lfeunit](https://github.com/lfe/lfeunit) (needed only to run the unit
  tests)
* [Exemplar](https://github.com/lfe/exemplar) - HTML as S-Expressions
* [Reveal.js](https://github.com/hakimel/reveal.js)


## Installation

Not sure why you'd want to include this as part of another project, but just
in case you do, here's how it's done: add it to your ``rebar.config`` deps:

```erlang
{deps, [
    ...
    {lfe-reveal-js, ".*", {git, "git@github.com:lfe/lfe-reveal-js.git",
      "master"}}
  ]}.
```

And then do the usual:

```bash
$ rebar get-deps
$ rebar compile
```

## Usage

```bash
$ make compile
$ make dev
```

Then visit [localhost:5099](http://localhost:5099).

## Building Your Own

If you'd like to build your own slide deck with ``lfe-reveal-js``, just clone
this repo, and start adding your slides in ``src/reveal-js-content.lfe`` and
``src/slides.lfe``.

That's all there is to it!
