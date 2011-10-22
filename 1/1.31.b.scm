;; An iterative process to compute the product of a series

(define product
  (lambda(term a next b)
    (define (iter a result)
      (if (> a b)
	  result
	  (iter (next a) (* result
			    (term a)))))
    (iter a 1)))

(product (lambda(x) x) 1 (lambda(x) (+ 1 x)) 5)
;;Value: 120

(product (lambda(x) x) 1 (lambda(x) (+ 2 x)) 10)
;;Value: 945
	
