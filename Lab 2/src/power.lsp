(defun power (m n)
    (if (= n 0) 1
	(if (and (> n 0) (= (mod n 2) 0)) (expt (expt m (/ n 2)) 2) 
	    (if (and (> n 0) (= (mod n 2) 1)) (* (expt (expt m (/ (- n 1) 2)) 2) m) 
		(print '(n is negative))))))
