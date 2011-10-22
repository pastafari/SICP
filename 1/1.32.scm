;; A higher order procedure to accumulate the elements of a series into a result
;; This here is the linear recursive process

(define accumulate
  (lambda(combiner null-value term a next b)
    (if(> a b)
       null-value
       (combiner (term a) (accumulate combiner null-value term (next a) next  b)))))


;;Sum of the first 10 numbers using accumulate
(accumulate + 0 (lambda(x) x) 1 (lambda(x)(+ 1 x)) 10)
;;value: 55

;;product of the first 5 numbers, or 5!
(accumulate * 1 (lambda(x) x) 1 (lambda(x) (+ 1 x)) 5)
;;Value: 120



