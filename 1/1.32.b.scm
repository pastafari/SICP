;; An iterative process to accumulate values of a series

(define accumulate
  (lambda(combiner null-value term a next b)
    (define (iter a result)
      (if(> a b)
	 result
	 (iter (next a)
	       (combiner (term a) result))))
	 
    (iter a null-value)))


;;Sum of first 10 numbers using iterative accumulate
(accumulate + 0 (lambda(x) x) 1 (lambda(x) (+ 1 x)) 10)
;;Value: 55

;;Product of first 5 numbers using iterative accumulate
(accumulate * 1 (lambda(x) x) 1 (lambda(x) (+ 1 x)) 5)
;;Value: 120
