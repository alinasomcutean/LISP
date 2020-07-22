;;flatten a nested list structure
;;ex: (1 2 3 (4 5)) -> (1 2 3 4 5)

(defun flatten_list (list) 
	(if (equal list nil) nil 
		(let ((element (car list)) (second_list (cdr list))) 
		(if (listp element) (append (flatten_list element) (flatten_list second_list)) 
			(append (cons element nil) (flatten_list second_list))))))	
