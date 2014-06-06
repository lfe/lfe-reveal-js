(defmodule reveal-js-routes
  (export all))

(include-lib "deps/exemplar/include/html-macros.lfe")

(defun routes
  "This is a single-page app, so there is only one valid route."
  (((list '"") index-func deck-func arg-data)
    (let ((content (funcall index-func deck-func arg-data)))
      (reveal-js-util:make-200-result content))))
