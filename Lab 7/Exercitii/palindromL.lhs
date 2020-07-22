\begin{code}
app_all [] = []
app_all (x:xs) = x ++ app_all xs

elimSpaces [] = []
elimSpaces (x:xs) = if (x == ' ') then elimSpaces xs else x : elimSpaces xs

my_init :: [a] -> [a]
my_init [] = []
my_init (x:[]) = []
my_init (x:y:xs) = x : my_init (y:xs)

palindrom [] = False
palindrom (x:[]) = True
palindrom (x:xs) = if(x == last xs) then palindrom (my_init xs) else False

palindromL xs = palindrom (elimSpaces (app_all xs))
\end{code}
