\begin{code}
dag = [("a","b"),("a","c"),("a","d"),("b","e"),("c","f"),("d","e"),("e","f"),("e","g")]

member _ [] = False
member x (y:ys) = if (x == y) then True else member x ys

mysucc x [] = []
mysucc x ((y,z):l) = if (x == y) then z : (mysucc x l) else (mysucc x l)

myreverse [] = []
myreverse (x:xs) = (myreverse xs) ++ [x]

df [] dag visited = myreverse visited
df (x:xs) dag visited = if (member x visited) then (df xs dag visited)
			else (df ((mysucc x dag) ++ xs) dag (x:visited))

bf [] dag visited = myreverse visited
bf (x:xs) dag visited = if (member x visited) then (bf xs dag visited)
			else (bf (xs ++ (mysucc x dag)) dag (x:visited))
\end{code}
