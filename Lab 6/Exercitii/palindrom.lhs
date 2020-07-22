\begin{code}
palindrom [] = False
palindrom (x:[]) = True
palindrom (xs) = (head xs == last xs) && palindrom ((init . tail) xs)
\end{code}
