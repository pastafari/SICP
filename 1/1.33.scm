(define (smallest-divisor n)
  (find-divisor n 2))

(define (divides? a b)
  (= 0 (remainder b a)))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
	((divides? test-divisor n) test-divisor)
	(else (find-divisor n (+ test-divisor 1)))))

(define (inc x) (+ 1 x))

(define (prime? n)
  (= n (smallest-divisor n)))


(define filtered-accumulate
  (lambda(filter combiner null-value term a next b)
    (define (iter a result)
      (cond ((> a b) result)
	    ((filter a)(iter (next a) (combiner (term a) result)))
	    (else (iter (next a) result))))
    (iter a null-value)))


;; the sum of the squares of the prime numbers in the interval a to b

(filtered-accumulate prime? + 0 square 2 inc 10)

;;Value: 87



;; the product of all the positive integers less than n that are relatively prime to n

(define (relatively-prime-to? n)
  (lambda(x)
    (= (gcd x n) 1)))

(filtered-accumulate (relatively-prime-to? 10) * 1 identity 1 inc  10)

;;Value: 189
