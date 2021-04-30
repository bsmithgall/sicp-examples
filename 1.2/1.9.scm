(define (inc a) (+ a 1))
(define (dec b) (- a 1))

(define (++ a b)
	(if (= a 0) b (inc (++ (dec a) b))))

#|

(++ 4 5) 
(+ 1 (++ 3 5))
(+ 1 (+ 1 (++ 2 5)))
(+ 1 (+ 1 (+ 1 (++ 1 5))))
(+ 1 (+ 1 (+ 1 (+ 1 (++ 0 5)))))
(+ 1 (+ 1 (+ 1 (+ 1 5))))
;; 9

This is a recursive procedure since the definition expands via references
to itself.
|#

(define (+++ a b)
	(if (= a 0) b (+++ (dec a) (inc b))))

#|

(+++ 4 5)
(+++ (- 1 3) (+ 1 5))
(+++ (- 1 2) (+ 1 6))
(+++ (- 1 1) (+ 1 7))
(+++ (- 1 0) (+ 1 8))
;; 9

This is an iterative procedure. Even though +++ references itself, when we
expand it, this is still more of a "looping construct" -- much like "fact-iter"
as described in the reading, +++ generates an iteractive process as opposed to
being purely recursive like the example above.
|#

