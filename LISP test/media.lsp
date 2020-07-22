;;calculeaza media aritmetica a nr din lista

(defun media (list) 
	(/ (media_aux list 0) (length list))
)

(defun media_aux (list sum) 
	(if (null list) sum (media_aux (cdr list) (+ sum (car list))))
)
