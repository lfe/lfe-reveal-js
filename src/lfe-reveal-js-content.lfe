(defmodule lfe-reveal-js-content
  (export all))

(include-lib "deps/exemplar/include/html-macros.lfe")

(defun build-index ()
  (!doctype html)
    (html '(lang "en")
      (list
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
            ))
        (body
          (div '(class "reveal")
               )))
      ))

(defun get-index (arg-data)
  ""
  (: lfe-reveal-js-util make-200-result
    (html
      (list
          (head
            (title '"Main Page"))
          (body
            (main
              (div
                (list
                  (h1 '"Main Page")
                  (h2 '"Links")
                  (ul
                    (list
                      (li (a '(href "/content/1") '"/content/1"))
                      (li (a '(href "/content/2") '"/content/2"))
                      (li (a '(href "/content/3") '"/content/3"))
                      (li
                        (list
                          (a '(href "/relation/1/2") '"/relation/1/2")
                          '" (a template-based page)"))
                      (li (a '(href "/bob") '"404"))))))))))))

(defun get-content (item-id arg-data)
  "2-arity content API.

  This function generates its HTML from scratch."
  ;; we'll pretent to pull content from a data store here ...
  (let ((fetched-title '"Queried Title")
        (fetched-content '"Some super-great queried lorem ipsum."))
    (: lfe-reveal-js-util make-200-result
      (html
        (list
            (head
              (title fetched-title))
            (body
              (main
                (div '(class "dynamic content")
                  (list
                    (h1 fetched-title)
                    (h2 (++ '"Item " item-id))
                    (div (p fetched-content)))))))))))

(defun get-content (user-id account-id arg-data)
  "3-arity content API.

  This function generates its HTML by calling another function. This is an
  example of how one could do templating -- including putting HTML-generating
  functions in their own modules."
  ;; we'll pretent to pull content from a data store here ...
  (let ((fetched-title '"Queried Title")
        (fetched-content '"Some super-great queried lorem ipsum."))
    (: lfe-reveal-js-util make-200-result
      (base-page
        fetched-title
        (div '(class "dynamic content")
          (list
            (h1 fetched-title)
            (h2 (++ '"Relation: "
                    user-id '" (user id) | "
                    account-id '" (account id)"))
            (div (p fetched-content))))))))

(defun base-page (title remaining)
  "We can also make building HTML easier by using functions."
  (html
    (list
      (head
        (title title))
      (body
        (main remaining)))))

(defun four-oh-four (message)
  "Custom 404 page."
    (: lfe-reveal-js-util make-404-result
      (base-page '"404"
        (div
          (list
            (h1 '"404 - Not Found")
            (div (p message)))))))




