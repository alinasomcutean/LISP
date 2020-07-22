(defun dbl (e) 
    (if (numberp e) (* 2 e) (Print e))))


(defun proc-rec (process li) 
	(mapcar process li))

(defun f (l) 
	(mapcar #'(lambda (x) 'dbl x) l))
