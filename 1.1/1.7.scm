;; Book-given sqrt definitions

(define (square x) (* x x))
(define (average x y) (/ (+ x y) 2))
(define (improve guess x) (average guess (/ x guess)))

(define (sqrt-iter guess x) 
	(if (good-enough? guess x) 
		guess 
		(sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
	(< (abs (- (square guess) x)) 0.001))

(define (sqrt x) 
	(sqrt-iter 1.0 x))

;; Very small numbers do not work with good-enough? because their original values can underflow 
;; the original test, making them incorrect succeed. For example:

;; (sqrt 0.0000001) => 0.03125106561775382
;; python3 -c 'from math import sqrt; print(sqrt(0.0000001))' # 0.00031622776601683794

;; Very large numbers have issues with good-enough? because they take a very very long time to complete.

;; (sqrt 1000000000) => does not complete within one minute
;; python3 -c 'from math import sqrt; print(sqrt(10000000000000))' # 3162277.6601683795

(define (sqrt2 x)
	(define (sqrt-iter prev-guess guess x)
		(if (good-enough? prev-guess guess)
			guess
			(sqrt-iter (improve guess x) guess)))

	(define (good-enough? prev-guess guess)
		(<= (abs (- prev-guess guess)) 0.001))

	(sqrt-iter 0.0 1.0 x))

(sqrt2 0.0000001) ; 0005547122113177672, much closer!
;; (sqrt2 1000000000) -- still does not complete

