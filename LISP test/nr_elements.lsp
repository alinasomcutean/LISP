;;find the length of a list without using length

(defun nr_elements (list) 
	(if (equal list nil) 0 (+ (nr_elements (cdr list)) 1))
)
