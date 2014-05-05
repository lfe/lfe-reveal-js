(include-lib "deps/exemplar/include/html-macros.lfe")

(defmacro cover body
  "This is a convenience macro for the front cover of a deck."
  `(section (list ,@body)))

(defmacro chapter body
  "This is a convenience macro for defining a new chapter."
  `(section (list ,@body)))

(defmacro slide body
  "This is a convenience macro for creating a new slide."
  `(section (list ,@body)))
