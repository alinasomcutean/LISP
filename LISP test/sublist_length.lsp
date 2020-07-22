;;find the maximum length of sublists of a list

(defun sublist_length (list) 
	(if (null list) 0 (aux list 0)
	)
)

(defun aux (list n) 
	(if (null list) n 
		(if (listp (car list)) 
			(if (> (length (car list)) n) (aux (cdr list) (length (car list))) 
				(aux (cdr list) n)
			)
			(aux (cdr list) n)
		)
	)
)
