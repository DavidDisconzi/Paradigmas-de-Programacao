-- PROGRAMACAO

-- 1.Escreva uma funcao hasEqHeads :: [Int] -> [Int] -> Bool que verifica se as 
-- 2 listas possuem o mesmo primeiro elemento. 

hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads x y
	| head x == head y = True
	| otherwise = False

-- 3.Escreva uma funcao recursiva add10, que adicione a constante 10 a cada 
-- elemento de uma lista, produzindo outra lista.

add10 :: [Int] -> [Int]
add10 [] = []
add10 x = (head x) +10 : add10(tail x)

-- 4. Escreva uma funcao recursiva addComma, 
-- que adicione uma vírgula no final de cada string contida numa lista. 
-- Dica: (1) Strings sao listas de caracteres. 
-- Dica: (2) Para concatenar listas, use o operador ++.

addComma :: [String] -> [String]
addComma [] = []
addComma x = ((head x) ++ ",") : addComma(tail x)

-- 5.Refaca os 2 exercicios anteriores usando a funcao de alta ordem 'map'.

add10 :: [Int] -> [Int]
add10 x = map(+10)x

addComma :: [String] -> [String]
addComma ns = map(++",")[ns]

-- 6.Crie uma funcao htmlListItems :: [String] -> [String], 
-- que receba uma lista de strings e retorne outra lista contendo 
-- as strings formatadas como itens de lista em HTML. 
--Dica: use map e defina uma funcao auxiliar a ser aplicada a cada elemento.

htmlListItems :: [String] -> [String]
htmlListItems ns = map(funcaoAuxiliar)ns

funcaoAuxiliar :: String->String
funcaoAuxiliar x = 	"<LI>" ++ x ++ "</LI>" 

-- 7.Crie uma funcao recursiva charFound :: Char -> String -> Bool, 
-- que verifique se o caracter (primeiro argumento) está contido na string (segundo argumento).

charFound :: Char -> String -> Bool
charFound x y 
	| y == [] = False
	| x == (head y) = True
	| otherwise = charFound x(tail y)

-- 8.Reescreva a funcao anterior sem recursao, usando outras funcoes pre-definidas ja vistas em aula.

comparaCharString :: Char -> String -> Bool
comparaCharString xC [] = False
comparaCharString xC yS = if  (filter(== xC)yS) == []
	then False
	else True
	
-- 9.Use a funcao de alta ordem 'zipWith' para produzir uma funcao que obtenha as diferencas, 
-- par a par, dos elementos de duas listas.

subtrai :: [Int] -> [Int] -> [Int]
subtrai x y = zipWith (-) x y

-- FUNCOES DE ALTA ORDEM

-- 1.Dada uma lista de numeros, calcular 2*n+1 para cada numero n contido na lista.

listaCalculaN :: [Int] -> [Int]
listaCalculaN x = map (+1)(map(*2)x)

-- 2.Dadas duas listas X e Y de numeros inteiros, calcular 4*x+2*y+1 para cada par de numeros x e y pertencentes as listas. 

calculaXYLista :: [Int] -> [Int] -> [Int]
calculaXYLista x y
	| (x == [] )= []
	| (y == []) = []
	| otherwise = map (1+) (zipWith (+) (map (4*) x) (map (2*) y))

-- 3.Dada uma lista de strings, produzir outra lista com strings de 10 caracteres, 
-- usando o seguinte esquema: strings de entrada com mais de 10 caracteres sao truncadas, 
-- strings com ate 10 caracteres sao completadas com '.' ate ficarem com 10 caracteres.

trancaEPreenche :: String -> String
trancaEPreenche x 
	| length x >10 = trancaEPreenche (init x)
	| length x <10 = trancaEPreenche(x ++ ".")
	| otherwise = x

mapeador :: [String] -> [String]
mapeador x = map (trancaEPreenche)x

-- 4.Dada uma lista de idades, selecionar as que sao maiores que 20 e, 
-- para cada uma, calcular o ano de nascimento correspondente (aproximado, considerando o ano atual).

calculaIdade :: [Int] -> [Int]
calculaIdade id = filter(<1996) (map (2015-) id)