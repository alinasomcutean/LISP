(defun sumall_all_levels (list) 
	(if (NULL list) 0 
		(if (listp (car list)) (sumall_all_levels(car list))		
			(if (numberp (car list)) (+ (car list) (sumall_all_levels (cdr list))) 
				(sumall_all_levels (cdr list))))))
