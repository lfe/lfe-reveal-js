(defmodule reveal-js-yaws
  (export all))

(defun out (arg-data)
  "This function is executed by YAWS. It is the YAWS entry point for our app."
  (let ((raw-path-info (reveal-js-util:parse-path arg-data)))
    (if (== raw-path-info 'undefined)
      (reveal-js-routes:routes
        '("")
        #'reveal-js-content:build-index/1
        arg-data)
      (let ((path-info (string:tokens raw-path-info '"/")))
        (reveal-js-routes:routes
          path-info
          #'reveal-js-content:build-index/1
          arg-data)))))
