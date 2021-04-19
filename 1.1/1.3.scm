(define (sum-of-squares x y) (+ (* x x) (* y y)))

(define (sum-square-largest x y z)
	(sum-of-squares
		(if (>= x y) x y)
		(if (>= y z) y z)))

(= (sum-square-largest 1 2 3) 13)
(= (sum-square-largest 3 4 5) 41)
(= (sum-square-largest 0 -1 8) 64)

