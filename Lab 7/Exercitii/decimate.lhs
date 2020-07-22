\begin{code}
decimate xs n = 
	decim xs n 1
		where 
			decim [] _ _ = []
			decim (x:xs) n i = 
				if(i < n) then x : (decim xs n (i+1))
				else if (i == n) then (decim xs n 1)
					else x : xs
\end{code}
