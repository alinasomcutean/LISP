;;rotate a list with nth elements to the left
;;if the number is negative, it rotates to the right

(defun rotate (list pos) 
	(if (equal list nil) nil 
		(let ((pos1 (mod pos (length list)))) 
		(append (split_after list pos1) (split_up_to list pos1)))
	)
)

(defun split_after (list pos) 
	(cond ((<= pos 0) list) 
		((equal list nil) ()) 
		(t (split_after (cdr list) (- pos 1)))
	)
)

(defun split_up_to (list pos) 
	(cond ((<= pos 0) ()) 
		((equal list nil) list) 
		(t (cons (car list) (split_up_to (cdr list) (- pos 1))))
	)
)
