(defun sumall_flat (list) 
	(if (NULL list) 0 
		(if (numberp (car list)) (+ (car list) (sumall_flat (cdr list))) 
			(sumall_flat (cdr list)))))
