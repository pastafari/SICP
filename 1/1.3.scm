;;square
(define (square x) (* x x))

;;sum of squares
(define (sum-of-squares a b) (+ (square a) (square b)))

;;conditional to find largest 2 of 3 and return sum of squares
(define (sum-of-squares-max-2-of-3 a b c) 
	(cond ((and (<= a b) (<= a c)) (sum-of-squares b c))
	      ((and (<= b a) (<= b c)) (sum-of-squares a c))
	      ((and (<= c a) (<= c b)) (sum-of-squares a b))))
		
(sum-of-squares-max-2-of-3 1 5 4)