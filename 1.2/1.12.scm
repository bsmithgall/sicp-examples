(define (pascal-triangle row col)
	(if 
		;; base case: we are at the edge, or we are at one of the sides
		(or (= col 1) (= col row)) 1
		;; recursive case: we need to add the two numbers above this number
		(+ 
			(pascal-triangle (- row 1) (- col 1))
			(pascal-triangle (- row 1) col))))

(pascal-triangle 1 1) ;; 1
(pascal-triangle 2 1) ;; 1
(pascal-triangle 3 2) ;; 2
(pascal-triangle 4 3) ;; 3
(pascal-triangle 5 3) ;; 6


