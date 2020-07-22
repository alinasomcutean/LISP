;;ex: (1 1 2 2 3 4) => ((1 1) (2 2) (3) (4))

(defun pack (list) 
	(if (equal list nil) nil (cons (separate list) (pack (rest_list list))))
)

(defun rest_list (list) 
	(cond ((equal list nil) nil) 
		((equal (cdr list) nil) nil) 
		((equal (car list) (cadr list)) (rest_list (cdr list))) 
		(t (cdr list))))

(defun separate (list) 
	(cond ((equal list nil) nil) 
		((equal (cdr list) nil) list) 
		((equal (car list) (cadr list)) (cons (car list) (separate (cdr list)))) 
		(t (list (car list)))))
