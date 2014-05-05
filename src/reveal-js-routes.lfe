(defmodule reveal-js-routes
  (export all))

(include-lib "deps/exemplar/include/html-macros.lfe")

(defun routes
  "2-arity routes for our app."
  ;; /
  (((list '"") arg-data)
    (let ((content (reveal-js-content:build-index arg-data)))
      (reveal-js-util:make-200-result content))))
