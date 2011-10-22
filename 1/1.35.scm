;; Use fixed point to calculate the value of phi (the golden ratio)

(define tolerance 0.0001)

(define (fixed-point f initial-guess)
  (define (close-enough? guess1 guess2)
    (< (abs (- guess1 guess2)) tolerance))
  
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
	  next
	  (try next))))
  (try initial-guess))

(fixed-point (lambda(x) (+ 1 (/ 1.0 x))) 1)
;;Value: 1.61805555555555


