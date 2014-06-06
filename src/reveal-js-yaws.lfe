(defmodule reveal-js-yaws
  (export all))

(defun get-routes (path-info arg-data)
  (reveal-js-routes:routes
    path-info
    #'reveal-js-content:build-index/2
    #'reveal-js-content:build-slide-deck/1
    arg-data))

(defun out (arg-data)
  "This function is executed by YAWS. It is the YAWS entry point for our app."
  (let ((raw-path-info (reveal-js-util:parse-path arg-data)))
    (if (== raw-path-info 'undefined)
      (get-routes '("") arg-data)
      (get-routes
        (string:tokens raw-path-info '"/")
        arg-data))))
