;;remove an element from a list at a specified position k

(defun remove_at (list k) 
	(if (equal nil list) list 
		(if (= k 1) (cdr list) 
			(if (> k (length list)) list (cons (car list) (remove_at (cdr list) (- k 1)))))))
