# lfe-reveal-js [![Build Status](https://travis-ci.org/lfe/lfe-reveal-js.png?branch=master)](https://travis-ci.org/lfe/lfe-reveal-js)


## Introduction

**An LFE/Exemplar Wrapper for Reveal.js**

You always wanted to build your presetnations in LFE (Lisp Flavored Erlang),
right? HTML as S-expressions?

Now's your chance!


## Dependencies


This project assumes that you have [lfetool](https://github.com/lfe/lfetool)
installed somwhere in your ``$PATH``.

This project depends upon the following, which are installed to the ``deps``
directory of this project when you run ``make deps``:

* [LFE](https://github.com/rvirding/lfe) (Lisp Flavored Erlang; needed only
  to compile)
* [lfeunit](https://github.com/lfe/lfeunit) (needed only to run the unit
  tests)


## Installation

Just add it to your ``rebar.config`` deps:

```erlang
{deps, [
    ...
    {lfe-reveal-js, ".*", {git, "git@github.com:lfe/lfe-reveal-js.git", "master"}}
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
this repo, and start adding your slides in ``src/reveal-js-content.lfe``. That's all there is to it!
