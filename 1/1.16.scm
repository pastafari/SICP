;; Oops, my 1.16 is linear. TODO: Need to find log n.

(define (exp b n)
  (define (exponent-iter a n)
    (cond ((= n 0) a)
	  ((= n 1) (* a b))
	  (else (exponent-iter (* a (* b b)) (- n 2)))))
  (exponent-iter 1 n))

(exp 3 3)
;; Value 27

(exp 2 5)
;; Value 32


