\begin{code}
last2 [] = []
--last2 (x:xs) = if (length xs == 0) then x : []
last2 (x:xs) = if (length xs == 1) then x : xs else (last2 xs)
last2 (x:xs) = if (length xs == 2) then xs else (last2 xs)
\end{code}
