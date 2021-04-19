(define (p) (p)) 
(define (test x y) (if (= x 0) 0 y))

(test 0 (p))


;; In applicative-order, scheme should crash because, (p) will attempt to substitute itself for itself endlessly!
;; In normal-order mode, (test 0 (p)) should reduce all the way down to 0.

