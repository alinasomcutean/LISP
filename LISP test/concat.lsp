;;concatenate 2 lists without using append
;;ex: (1 2 3) (4 5 6) => (1 2 3 4 5 6)

(defun concat (list1 list2) 
	(flatten_list (cons list1 list2))
)

(defun flatten_list (list) 
	(if (equal list nil) nil 
		(let ((element (car list)) (second_list (cdr list))) 
		(if (listp element) (append (flatten_list element) (flatten_list second_list)) 
			(append (cons element nil) (flatten_list second_list))))))
