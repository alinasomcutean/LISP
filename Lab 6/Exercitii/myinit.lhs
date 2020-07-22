\begin{code}
myinit (x:[]) = []
myinit (x:xs) = x : (myinit xs)
\end{code}
