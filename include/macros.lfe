(include-lib "deps/exemplar/include/html-macros.lfe")

(defmacro deck body
  "This is a convenience macro for starting off a slide deck."
  `(div '(class "reveal")
     (div '(class "slides")
       (list ,@body))))

(defmacro cover body
  "This is a convenience macro for the front cover of a deck."
  `(section (list ,@body)))

(defmacro chapter body
  "This is a convenience macro for defining a new chapter."
  `(section (list ,@body)))

(defmacro slide body
  "This is a convenience macro for creating a new slide."
  `(section (list ,@body)))

(defmacro h1-frag body
  `(h1 '(class "fragment") (list ,@body)))

(defmacro h2-frag body
  `(h2 '(class "fragment") (list ,@body)))

(defmacro h3-frag body
  `(h3 '(class "fragment") (list ,@body)))

(defmacro p-frag body
  `(p '(class "fragment") (list ,@body)))

(defmacro li-frag body
  `(li '(class "fragment") (list ,@body)))
