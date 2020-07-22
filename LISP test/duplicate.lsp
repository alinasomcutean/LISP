;;duplicate every element in a list

(defun duplicate (list) 
	(if (equal list nil) nil (append (list (car list) (car list)) (duplicate (cdr list))))
)
