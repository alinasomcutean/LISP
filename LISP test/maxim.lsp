;;find the maximum number in a list without using max

(defun maxim (list) 
	(if (equal list nil) (print '(There is no max!)) 
		(if (= (length list) 1) (car list) 
			(aux (cdr list) (car list))
		)
	)
)

(defun aux (list m) 
	(cond ((equal list nil) m) 
		((>= m (car list)) (aux (cdr list) m)) 
		((< m (car list)) (aux (cdr list) (car list)))
	)
)
