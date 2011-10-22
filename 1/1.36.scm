
(define tolerance 0.0001)

(define average
  (lambda(x y)
    (/ (+ x y)
       2)))


;; Average-damped fixed point
(define (fixed-point f initial-guess)
  (define (close-enough? guess1 guess2)
    (< (abs (- guess1 guess2)) tolerance))
  
  (define (try guess)
    (let ((next (average guess (f guess))))
      (newline)
      (display guess)
      (if (close-enough? guess next)
	  next
	  (try next))))
  (try initial-guess))

(fixed-point cos 1.0)

(fixed-point (lambda(x) (/ (log 1000) (log x))) 2.0)


;;Average damping reduces oscillations and converges to an answer faster


