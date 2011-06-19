;;better good enough using old guess and new guess to approximate when to stop
(define (better-good-enough? old-guess new-guess)
  (< (abs (- old-guess new-guess)) 0.001))

;;new sqrt-iter using better good-enough?
(define (newer-sqrt-iter guess x)
  (if (better-good-enough? guess (improve guess x))
      guess
      (newer-sqrt-iter (improve guess x)
		       x)))

;;new sqrt 
(define (newer-sqrt x) (newer-sqrt-iter 1.0 x))

;;Tests
(newer-sqrt 2.0)
;Value: 1.4142156862745097

(newer-sqrt 0.00000002)
;Value: 1.9565371278841633e-3

