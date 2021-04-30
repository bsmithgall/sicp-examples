(define (square n) (* n n))
(define (even? n) (= (remainder n 2) 0))

(define (fast-expt-iter b n) 
	(define (fast-expt-iter-step a b n)
		(cond 
			;; if raising to the 0th power, return the state variable.
			((= 0 n) a)
			;; if raising to an eventh power, create another step with arguments
			;;   - state variable
			;;   - square of b
			;;   - half of the original power
			((even? n) (fast-expt-iter-step a (square b) (/ n 2)))
			;; if raising to an odd power, create another step with arguments
			;;   - the state variable * the original number b
			;;   - the original number b
			;;   - the original power - one
			(else (fast-expt-iter-step (* a b) b (- n 1)))))
	(fast-expt-iter-step 1 b n))

(= (fast-expt-iter 2 2) 4) ;; 4
(= (fast-expt-iter 2 3) 8) ;; 8
(= (fast-expt-iter 2 4) 16) ;; 16
(= (fast-expt-iter 2 5) 32) ;; 32

