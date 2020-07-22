;;eliminates consecutive duplicates of a list
;;ex: (a a b c c c) -> (a b c)

(defun eliminate_duplicates (list) 
	(cond ((equal list nil) nil)
   		((equal (cdr list) nil) list)
   		((equal (car list) (cadr list)) (eliminate_duplicates (cdr list)))
   		(t (cons (car list) (eliminate_duplicates (cdr list))))
   	)
 )
