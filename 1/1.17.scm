;;A procedure that multiplies two numbers using additions



(define (double x) (* 2 x))

(define (halve x) (/ x 2))

(define (fast-mult a b)
  (cond ((= b 0) 0)
	((even? b)(fast-mult (double a) (halve b)))
	(else (+ a (fast-mult a (- b 1))))))

(fast-mult 2 3)
;;Value: 6

(fast-mult 3 7)
;;Value: 21
  

