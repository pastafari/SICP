;; A method using higher order procedures
;; to compute the definite integral of a function within a bounded range

(define sum
  (lambda (term a next b)
    (cond ((> a b) 0)
	  (else (+ (term a)
		   (sum term (next a) next b))))))

(define simpsons-integral
  (lambda (f a b n)
    (define h (/ (- b a)
	       n))
    
    
    (define term
      (lambda(k)
	      (cond ((= k 0)(f a))
		    ((even? k)(* 2
				 (f (+ a
				       (* k h)))))
		    (else (* 4
			      (f (+ a
				    (* k h))))))))

    
    (* (/ h 3.0)
       (sum term 0 (lambda(x) (+ 1 x)) n))))
        


(define cube
  (lambda(x) (* x x x)))

(simpsons-integral cube 0 1 100)
;Value: .25333333333333335

(simpsons-integral cube 0 1 1000)
;Value: .25033333333333335

(simpsons-integral cube 0 1 10000)
;Value: .25003333333333333



