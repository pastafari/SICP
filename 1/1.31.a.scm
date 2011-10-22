;; A linear recursive process to compute the product of a series indexed by a and b
;; where each term of the series is (term a) and the next index is (next a)

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


