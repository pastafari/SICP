(define product
  (lambda(term a next b)
    (cond ((> a b) 1)
	  (else (* (term a) (product term (next a) next b))))))


;; Another way to express a factorial
(product (lambda(x) x) 1 (lambda(x) (+ 1 x)) 5)
;;Value: 120


;;Product of first 5 odd numbers
(product (lambda(x) x) 1 (lambda(x) (+ 2 x)) 10)
;;Value: 945

