;; improve method for finding cuberoot
(define (improve-guess guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess))
     3))

;;test
(improve-guess 1.0 8)
;value: 3.3333333333

;;to test whether the new guess differs significantly from the previous guess
(define (good-enough? guess x)
  (< (/ (abs (- guess (improve guess x))) guess)
     0.0001))

;; recursive cubert-iter. keeps going until guess doesn't improve significantly, at which point returns guess
(define (cubert-iter guess x)
  (if (good-enough? guess (improve-guess guess x))
      guess
      (cubert-iter (improve-guess guess x) x)))

;; cubert x is a call to cubert-iter with an initial guess of 1.0
(define (cubert x) (cubert-iter 1.0 x))

(cubert 8)
;Value: 2.000004911675504


