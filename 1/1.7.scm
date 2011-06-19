(define (average x y)
  (/ (+ x y) 2))
;Value: average

;;test
(= 6 (average 1 11))
;Value: #t

(define (improve guess x)
  (average guess (/ x guess)))
;Value: improve

;;test
(improve 1 16)
;Value: 17/2

(improve 1.0 16)
;Value: 8.5

(define (good-enough? guess x)
  (< (/ (abs (- guess (improve guess x))) guess)
     0.0001))
;Value: good-enough?


(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))
;Value: sqrt-iter

(define (sqrt x) (sqrt-iter 1.0 x))
;Value: sqrt

(sqrt 2)
;Value: 1.4142156862745097

(sqrt 0.0001)
;Value: 1.0000714038711746e-2