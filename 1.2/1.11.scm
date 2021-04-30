;; Recursive process

(define (f-recursive n) 
	(if (< n 3)
		n
		(+ 
			(f-recursive (- n 1)) 
			(* (f-recursive (- n 2)) 2) 
			(* (f-recursive (- n 3)) 3))))

(f-recursive 3) ;; 4
(f-recursive 2) ;; 2


;; Iterative process
;; To do actual iteraction, we will need to store
;; intermediate state values for everything in the function
;; described by f-recursive above. The starting condition is
;; as-if n = 3, 
;; so we should have f-1-val = 2, f-2-val = 1, f-3-val = 0, step = 2

(define (f-iterative n) 
	(define (f-iterative-step f-1-val f-2-val f-3-val step)
		(if (= step n)
			f-1-val
			(f-iterative-step 
				(+ f-1-val (* 2 f-2-val) (* 3 f-3-val))
				f-1-val
				f-2-val
				(+ 1 step))))
	(if (< 3 n)
		n
		(f-iterative-step 2 1 0 2)))


(f-iterative 3) ;; 4
(f-iterative 2) ;; 2
