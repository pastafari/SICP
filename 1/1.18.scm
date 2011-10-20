;; An iterative procedure to compute the product of two number
;; using the primitives of addition, doubling and halving
;; This uses the fact that: a * b = (2a) * (b/2) if b is even AND a + a * (b-1) when b is odd

(define (fast-mult a b)

  ;; Defining primitive procedures that are 'allowed'
  (define (double x) (* 2 x))
  (define (halve x) (/ x 2))

  ;; The iterative method
  (define (fast-mult-iter product a b)
    (cond ((= b 0) product)
	  ((even? b) (fast-mult-iter product (double a) (halve b)))
	  (else (fast-mult-iter (+ product a) a (- b 1)))))
  
  (fast-mult-iter 0 a b))

(fast-mult 3 4)
;;Value: 12

(fast-mult 5 7)
;;Value: 35

(fast-mult 8 8)
;;Value: 6
