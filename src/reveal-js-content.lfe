(defmodule reveal-js-content
  (export all))

(include-lib "include/macros.lfe")

(defun build-slide-deck (arg-data)
  (deck
    (demo:introduction arg-data)
    (demo:chapter-1 arg-data)
    (demo:chapter-2 arg-data)
    (demo:chapter-3 arg-data)))

(defun build-index (arg-data)
  (list
    (!doctype 'html)
    (html '(lang "en")
      (list
        (build-head arg-data)
        (body
          (list
            (build-slide-deck arg-data)
            (build-javascript arg-data)))))))

(defun build-head (arg-data)
  (head
    (list
      (meta '(charset "utf-8"))
      (title '"lfe-reveal-js - The Exemplar Presentation Framework")
      (meta '(name "description"
              content "A framework for easily creating beautiful presentations using Exemplar"))
      (meta '(name "authors"
              content "Hakim El Hattab, Duncan McGreggor"))
      (meta '(name "apple-mobile-web-app-capable"
              content "yes"))
      (meta '(name "apple-mobile-web-app-status-bar-style"
              content "black-translucent"))
      (meta '(name "viewport"
              content "width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"))
      (link '(rel "stylesheet"
              href "css/reveal.min.css"))
      (link '(rel "stylesheet"
              href "css/theme/default.css"
              id "theme"))
      (link '(rel "stylesheet"
              href "lib/css/zenburn.css"))
      (link '(rel "icon"
              type "image/ico"
              href "icons/favicon.ico")))))

(defun build-javascript (arg-data)
  (list
    (script '(src "lib/js/head.min.js"))
    (script '(src "js/reveal.min.js"))
    (script '(src "js/config.js"))))
