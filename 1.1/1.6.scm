;; `if` and `cond` are slightly different (see documentation[0] for a good description). In the case of `new-if,
;; the program will never terminate because the substitutions will be endless when attempting to evalulate
;; sqrt-iter; the else-block will always evaluate, producing another call to sqrt-iter

;; [0] https://docs.racket-lang.org/reference/if.html

