;;find the number of elements in a list containing another lists

(defun elements (list)
	(length (flatten_list list))
)

(defun flatten_list (list) 
	(if (equal list nil) nil 
		(let ((element (car list)) (second_list (cdr list))) 
		(if (listp element) (append (flatten_list element) (flatten_list second_list)) 
			(append (cons element nil) (flatten_list second_list))))))
