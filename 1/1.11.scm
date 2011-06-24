;;A recursive process to compute f(n)
;; where f(n) = n if n < 3 & f(n) = f(n-1) + 2f(n-2) + 3f(n-3) if n >=3

(define (f n)
  (cond
   ((< n 3) n)
   (else (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3)))))))

(f 4)
;;Value: 11

(f 10)
;;Value: 1892


(define (f-iter a b c n)
  (cond
   ((< n 3) c)
   (else (f-iter b c (+ c (* 2 b) (* 3 a)) (- n 1)))))

(define (f-iterative n)
  (f-iter 0 1 2 n))

(f-iterative 4)
;;Value: 11

(f-iterative 10)
;;Value: 1892





