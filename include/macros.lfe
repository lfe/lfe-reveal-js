(include-lib "deps/exemplar/include/html-macros.lfe")

(defmacro deck body
  "This is a convenience macro for starting off a slide deck."
  `(div '(class "reveal")
     (div '(class "slides")
       (list ,@body))))

(defmacro title-page body
  "This is a convenience macro for the front cover of a deck."
  `(section (list ,@body)))

(defmacro chapter body
  "This is a convenience macro for defining a new chapter."
  `(section (list ,@body)))

(defmacro slide body
  "This is a convenience macro for creating a new slide."
  `(section (list ,@body)))

(defmacro div-frag body
  `(div '(class "fragment") (list ,@body)))

(defmacro span-frag body
  `(span '(class "fragment") (list ,@body)))

(defmacro h1-frag body
  `(h1 '(class "fragment") (list ,@body)))

(defmacro h2-frag body
  `(h2 '(class "fragment") (list ,@body)))

(defmacro h3-frag body
  `(h3 '(class "fragment") (list ,@body)))

(defmacro p-frag body
  `(p '(class "fragment") (list ,@body)))

(defmacro ul-frag body
  `(ul '(class "fragment") (list ,@body)))

(defmacro li-frag body
  `(li '(class "fragment") (list ,@body)))

(defmacro ol-frag body
  `(ol '(class "fragment") (list ,@body)))

(defmacro notes body
  `(aside '(class "notes") (list ,@body)))

(defmacro lisp-code body
  `(pre (code '(class "lisp") (list ,@body))))

(defmacro erlang-code body
  `(pre (code '(class "erlang") (list ,@body))))

(defmacro inline-code body
  `(code '(class "inline") (strong (list ,@body))))

(defmacro quick-ul body
  `(ul (list ,@(lists:map (lambda (x) `(li ,x)) body))))

(defmacro quick-ol body
  `(ol (list ,@(lists:map (lambda (x) `(li ,x)) body))))

(defmacro quick-ul-frag body
  `(ul (list ,@(lists:map
                 (lambda (x) `(li '(class "fragment") ,x))
                 body))))

(defmacro quick-ol-frag body
  `(ol (list ,@(lists:map
                 (lambda (x) `(li '(class "fragment") ,x))
                 body))))
