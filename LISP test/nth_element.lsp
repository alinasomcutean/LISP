;;Your own nth element function

(defun nth_element (list k) 
    (if (= k 0) (car list) (nth_element (cdr list) (- k 1))))
