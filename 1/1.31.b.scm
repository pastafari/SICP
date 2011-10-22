;; An iterative process to compute the product of a series
;; Also an approximation to the value of pi/4 (attributed to the 17th century English mathematician John Wallis)


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
	


;;Approximation to pi/4


(define even?
  (lambda(x) (= (remainder x 2) 0)))

(define pi-numerator-term
  (lambda(x)
    (cond ((even? x) (+ 2 x))
	  (else (+ 1 x)))))

(define pi-denominator-term
  (lambda(x)
    (cond ((even? x) (+ 1 x))
	  (else (+ 2 x)))))

(define inc
  (lambda(x) (+ 1 x)))

(define (approx-pi-by-4 n)
  (/ (product pi-numerator-term 1 inc n)
     (product pi-denominator-term 1 inc n)))

;;Multiplying by 1.0 to get a decimal value result instead of a rational
(* 1.0
   (approx-pi-by-4 100))
;Value: .7892575441137919

(* 1.0
   (approx-pi-by-4 1000))
;Value: .7857901763830666

(* 1.0
   (approx-pi-by-4 10000))
;Value: .7854374264345131


;Value from Calculator.app 0.785398163397448


