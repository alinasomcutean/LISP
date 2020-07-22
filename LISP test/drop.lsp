;;drop every nth element from a list

(defun drop (list n) 
	(drop_aux list n 1))

(defun drop_aux (list n pos) 
	(cond ((equal list nil) nil) 
		((= (mod pos n) 0) (drop_aux (cdr list) n 1)) 
		(t (cons (car list) (dropaux (cdr list) n (+ pos 1))))
	)
)
