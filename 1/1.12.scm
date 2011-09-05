(define (pascals-triangle-number x y)
  (cond ((= y 0) 1)
	((= x y) 1)
	(else (+ (pascals-triangle-number (- x 1) y)
		 (pascals-triangle-number (- x 1) (- y 1))))))

(pascals-triangle-number 7 3)
;;35

(pascals-triangle-number 5 2)
;;Value: 10

(pascals-triangle-number 4 1)
;;Value: 4

