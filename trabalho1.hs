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
