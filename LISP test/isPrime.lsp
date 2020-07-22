;;find if a number is prime or not

(defun isPrime (n) 
	(and (>= n 1) (equal (divisors n) nil))
)

(defun divisors (n) 
	(divisors_up_to n (floor n 2))
)

(defun divisors_up_to (n m) 
	(cond ((<= m 1) ()) 
		((= (mod n m) 0) (cons m (divisors_up_to n (- m 1))))
		(t (divisors_up_to n (- m 1)))
	)
)
