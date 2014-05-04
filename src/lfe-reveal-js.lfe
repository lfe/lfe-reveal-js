(defmodule lfe-reveal-js
  (export all))

(defun my-adder (x y)
  (+ x (+ y 1)))

(defun out (arg-data)
  "This function is executed by YAWS. It is the YAWS entry point for our app."
  (let ((raw-path-info (: lfe-reveal-js-util parse-path arg-data)))
    (if (== raw-path-info 'undefined)
      (: lfe-reveal-js-routes routes '("") arg-data)
      (let ((path-info (: string tokens raw-path-info '"/")))
        (: lfe-reveal-js-routes routes path-info arg-data)))))
