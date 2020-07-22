;;(a a a b b c c a) -> ((3 a) (2 b) (2 c) (1 a))

(defun rle (list) 
	(if (equal list nil) nil (cons (list (length (separate list)) (car list)) (rle (rest_list list)))))

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
