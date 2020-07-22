\begin{code}
genN no len = if(len == 0) then [] else no : (genN no (len - 1))

add [] [] 0 = []
add [] [] 1 = [1]
add (x:xs) (y:ys) n = rem : (add xs ys cat)
	where 
	   rem = (x+y+n) `mod` 10
	   cat = (x+y+n) `div` 10

addBigs l1 l2 
	| len1 < len2 = add ((genN 0 (len2 - len1)) ++ l1) l2 0
	| otherwise = add l1 ((genN 0 (len1 - len2)) ++ l2) 0
		where
	  		len1 = length l1
	  		len2 = length l2
\end{code}
