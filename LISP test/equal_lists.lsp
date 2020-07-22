(defun equal_lists (first second) 
	;;(if (and (= first nil) (= second nil)) T 
		(if (= (car first) (car second)) (equal_lists (cdr first) (cdr second)) nil)
	;;)
)
