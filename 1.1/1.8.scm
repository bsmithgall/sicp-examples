;; Newton's cube-rule appromiation is ((x / y) ** 2 + 2*y) / 3
;; where y is the approimation and is the original value

(define (qoob x)
  (define (square x) (* x x))
  
  (define (improve x guess)
    (/
     (+ (square (/ x guess)) (* 2 guess))
     3))

  (define (good-enough? prev-guess guess)
    (<= (abs (- prev-guess guess)) 0.001))
  
  (define (qoob-iter prev-guess guess x)
    (if (good-enough? prev-guess guess)
        guess
        (qoob-iter guess (improve x guess) x)))

  (qoob-iter 0.0 1.0 x))

(qoob 64) ; => 16.000000000003983
(qoob 27) ; => 9.000000000053902
