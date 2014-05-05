(defmodule slides
  (export all))

(include-lib "deps/exemplar/include/html-macros.lfe")

(defun cover (arg-data)
  (section
    (list
      (h1 '"Reveal.js")
      (h3 '"HTML Presentation Made Easy")
      (p
        (small '"lfe-reveal-js: The Exemplar Presentation Framework")))))

(defun chapter-1 (arg-data)
  (section
    (list
      (h1 '"LFE")
      (h3 '"Lisp Flavored Erlang")
      (p
        '"You read that right. This was built with a Lisp."))))
