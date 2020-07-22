;;check if a list is ascending

(defun ordonata_cresc (list) 
	(if (null list) T 
		(if (null (cdr list)) T 
			(if (< (car list) (cadr list)) (ordonata_cresc (cdr list)) nil)
		)
	)
)
