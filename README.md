# lfe-reveal-js [![Build Status](https://travis-ci.org/lfe/lfe-reveal-js.png?branch=master)](https://travis-ci.org/lfe/lfe-reveal-js)


## Introduction

Add content to me here!


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
    {lfe-reveal-js, ".*", {git, "git@github.com:YOURNAME/lfe-reveal-js.git", "master"}}
  ]}.
```

And then do the usual:

```bash
$ rebar get-deps
$ rebar compile
```

## Usage

Add content to me here!

