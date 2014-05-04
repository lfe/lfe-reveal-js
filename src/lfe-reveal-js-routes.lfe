(defmodule lfe-reveal-js-routes
  (export all))

(include-lib "deps/exemplar/include/html-macros.lfe")

(defun routes
  "2-arity routes for our app."
  ;; /
  (((list '"") arg-data)
    (: lfe-reveal-js-content get-index arg-data)))