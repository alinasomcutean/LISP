;;reverse a list without using reverse

(defun reverse_list (list) 
	(reverse_aux list ())
)

(defun reverse_aux (list aux) 
	(if (null list) aux (reverse_aux (cdr list) (cons (car list) aux)))
)
