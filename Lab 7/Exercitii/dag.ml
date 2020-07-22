val dag = [("a","b"),("a","c"),("a","d"),("b","e"),("c","f"),("d","e"),("e","f"),("e","g")];

fun member (_,[]) = false
| member (x,y::xs) = if x=y then true else member (x,xs);

fun mysucc (x,[]) = []
| mysucc (x,(y,z)::l) = if x=y then z::mysucc(x,l) else mysucc(x,l)

fun myreverse [] = []
| myreverse (x::xs) = myreverse(xs) @ [x];

fun df ([],dag,visited) = myreverse(visited)
| df (x::xs,dag,visited) = if member (x,visited) then df (xs,dag,visited)
			else df (mysucc (x,dag) @ xs,dag,x::visited);

fun bf ([],dag,visited) = myreverse(visited)
| bf (x::xs,dag,visited) = if member(x,visited) then bf (xs,dag,visited)
			else bf (xs @ mysucc (x,dag),dag,x::visited);
