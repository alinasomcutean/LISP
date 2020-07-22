(defun fibac (n)
	(fib n 0 1))

(defun fib (n a b) 
	(if (= n 0) a (fib (- n 1) b (+ a b))))
