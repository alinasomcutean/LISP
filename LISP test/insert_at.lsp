;;insert a given element at a specified position k in a list

(defun insert_at (elem list k) 
    (if (or (equal list nil) (= k 1)) (cons elem list) (cons (car list) (insert_at elem (cdr list) (- k 1)))))
