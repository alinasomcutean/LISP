(defun sumall_nested_list (list) 
    (if (NULL list) 0 
	(if (listp (car list)) (sumall_nested_list (cdr list)) 
		(if (numberp (car list)) (+ (car list) (sumall_nested_list (cdr list))) 
			(sumall_nested_list (cdr list))))))
