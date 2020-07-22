;;check is every number of a list is divizible with y

(defun div (list y) 
	(mapcar #' (lambda (x) (if (= (mod x y) 0) T nil)) list)
)
