{-
-- maybeDo func (Just x) (Just y) = if (((Just x) /= Nothing) && ((Just y) /= Nothing)) then Just (func x y) else Nothing
/*
ghc -Wall My.hs 
ou 
ghci My.hs
*//*

Interdit de changer la valeur donné a une variable precedement déclaré.
Exemple de déclaration de fonction :
perimetreCercle r = 2 * pi * r
Cette ligne de code définit une fonction perimetreCercle, qui prend un argument r, et renvoie 2*pi*r.
Si vous avez déjà programmé dans un langage comme le C, vous remarquerez que la définition d'une fonction en Haskell ressemble plus à la définition d'une fonction en maths qu'à la définition d'une fonction en C.
f(x)=2∗π∗x
double perimetreCercle(double r) {
    return 2*pi*r;
}
À part les indications de type, la différence principale, c'est qu'une fonction C est une suite d'instructions, alors qu'une fonction Haskell est une expression (un calcul, un appel de fonction, ...), et donc qu'il n'y a pas d'équivalent de return.
*/
/*
Cette fonction calcule le périmètre d'un rectangle : vous pouvez la tester dans ghci.
On peut aussi réutiliser les fonctions déjà définies. Par exemple, sachant qu'un carré est un rectangle dont les côtés ont même longueur, comment calculeriez-vous le prérimètre d'un carré ?
perimetreRectangle longueur largeur = 2.0*(longueur+largeur)
perimetreCarre cote = perimetreRectangle cote cote

Pour recharger un fichier après l'avoir modifié, dans ghci, utilisez la commande :r

Maintenant, que se passerait-il si on chargeait ce code, où l'ordre des définitions est inversé ?
La réponse est : rien. Le compilateur est capable de comprendre les définitions, même si elles font référence à des fonctions définies plus tard dans le fichier. On peut d'ailleurs faire la même expérience avec des variables qui dépendent l'une de l'autre.
*/
Conditions et filtrage de motif
if condition then expression 1 else expression 2
condition est une expression qui donne un booléen, vrai ou faux.
Si la condition vaut True, expression 1 est renvoyée, sinon expression 2 est renvoyée.
En pratique, seule l'expression renvoyée est calculée.

Pour utiliser if, il est donc essentiel de savoir manipuler les booléens. Un booléen a deux valeurs possibles : 
True et False. Sensibles à la casse, donc n'oubliez pas la majuscule.

Opérateurs de comparaison
L interet d'une condition est de comparer des objets. Pour cela, il existe des opérateurs de comparaison, qui prennent
deux arguments et renvoient un booléen :

Opérateur   Renvoie True si...

==          les deux arguments sont égaux
/=          les deux arguments sont différents
<           le premier argument est inférieur au deuxième
>           le premier argument est supérieur au deuxième
<=          le premier argument est inférieur ou égal au deuxième
>=          le premier argument est supérieur ou égal au deuxième

En Haskell on écrit /=, et non pas !=.
On ne peut comparer que des valeures du meme type.

Utilisation d une fonction plus poussée : xor.
On va appeler les deux arguments x et y. On se rend compte que xor x y vaut True seulement si deux conditions sont respectées : x ou y doit valoir True (donc x || y doit donner True). De plus, x et y ne doivent pas être tous les deux vrais : x && y doit donner False, donc not (x && y) doit donner True.
Finalement, on aboutit à ceci :
xor x y = (x || y) && not (x && y)

Appeller une fonction xor dans le code n'est pas toujours très pratique : ça demande plus de parenthèses et on voit moins facilement le sens du code. On pourrait écrire `xor` à la place, mais ça fait quelques caractères en plus. L'autre solution est de définir un opérateur.
Ici, on définit l'opérateur |&, qui fait la même chose que la fonction xor.

a |& b = (a || b) && not (a && b)
test = True |& False

Pour tester if dans ghci :
Prelude> let x = 7
Prelude> if x > 5 then 42 else 0
42

Autre exemple de if else :
nul x = if x == 0 then True else False
nonNul x = if x == 0 then False else True

signe x = if x >= 0 then "Positif" else "Negatif"

signe x = if x >= 0
          then "Positif"
          else "Negatif"
Mais on ne peut pas ecrire ca :
signe x = if x >= 0
then "Positif"
else "Negatif"
En effet, l'indentation est importante en Haskell : ce qui est à l'intérieur de la fonction doit être plus indenté que le début de la déclaration de la fonction.
//
Filtrage de motif
case of :
enLettres x = case x of
                  0 -> "Zero"
                  1 -> "Un"
                  2 -> "Deux"
                  _ -> "Trop grand!"
Comme le switch en c.
init [1..5] -- [1, 2, 3, 4]
last [1..5] -- 5

-}