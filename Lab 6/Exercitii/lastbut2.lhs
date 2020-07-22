\begin{code}
lastbut2 [] = []
lastbut2 (x:xs) = if (length xs == 2) then x : [] else (if (length xs < 2) then (error "too few elements") else (lastbut2 xs))
\end{code}
