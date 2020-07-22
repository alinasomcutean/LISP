(defun fifth_element (list)
 (if (< (length list) 5) (print '(Length list less then 5)) (nth 4 list)))