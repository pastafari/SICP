(define (improve-guess guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess))
     3))

(improve-guess 1 8)
  
(define (cubert-iter guess x)
  (if (good-enough? guess (improve-guess guess x))
      guess
      (cubert-iter (improve-guess guess x) x)))

(define (cubert x) (cubert-iter 1.0 x))

(cubert 8)


