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