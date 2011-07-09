(define (exp b n)
  (define (exponent-iter a b n)
    (cond ((= n 0) a)
	  ((= n 1) (* a b))
	  (else (exponent-iter (* a (* b b)) b (- n 2)))))
  (exponent-iter 1 b n))

(exp 3 3)
;; Value 27

(exp 2 5)
;; Value 32


