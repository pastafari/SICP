;; An iterative process for sum

(define sum
  (lambda(term a next b)
    (define (iter a result)
      (if (> a b)
	  result
	  (iter (next a) (+ result
			    (term a)))))
    (iter a 0)))


(define cube
  (lambda(x) (* x x x)))

;;Sum of cubes of first 5 numbers
(sum cube 1 (lambda(x) (+ 1 x)) 5)
;;Value: 225

(define sqaure
  (lambda(x) (* x x)))

;;Sum of squares of first 5 odd numbers
(sum square 1 (lambda(x) (+ 2 x)) 10)
;;Value: 165

