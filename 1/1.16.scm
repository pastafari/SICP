;;An iterative method for fast-exponentiation
;;using the insight that ((b^2)^n) = (b ^ (2n))

(define (fast-expt b n)
  (define (fast-expt-iter product b n)
    (cond ((= n 0) product)
	  ((even? n) (fast-expt-iter product (* b b) (/ n 2)))
	  (else (fast-expt-iter (* product b) b (- n 1)))))

  (fast-expt-iter 1 b n))

(fast-expt 2 5)
;;Value: 32

(fast-expt 3 4)
;;Value: 81




