;;;; This module is really only useful for dev and testing in the LFE REPL.
;;;; It offers a convenient way to include macros in the REPL:
;;;;
;;;;    > (slurp '"src/reveal-js.lfe")
;;;;
;;;; At that point, you will have access to the macros that this module
;;;; includes.

(defmodule reveal-js
  (export all))

(include-lib "include/macros.lfe")

(defun noop ()
  'noop)
