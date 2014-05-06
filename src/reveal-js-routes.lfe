(defmodule reveal-js-routes
  (export all))

(include-lib "deps/exemplar/include/html-macros.lfe")

(defun routes
  "2-arity routes for our app."
  ;; /
  (((list '"") func arg-data)
    (let ((content (funcall func arg-data)))
      (reveal-js-util:make-200-result content))))
