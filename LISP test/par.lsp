;;check if every number from a list is even

(defun par (list) 
	(mapcar #' (lambda (x) (if (evenp x) T nil)) list)
)
