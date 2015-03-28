-- TRABALHO 2

-- Parte 1: List comprehension

-- 1.Escreva uma funcao geraPotencias :: Int -> [Int], que gere uma lista com as 
-- potencias de 2, com expoente de n ate 0, onde n e o argumento para a funcao. 
-- Use a sintaxe de list comprehension.

geraPotencia :: Int -> [Int]
geraPotencia x = [ 2^x | x <- [x,x-1..0]]

-- 2.Escreva uma funcao addSuffix :: String -> [String] -> [String] usando 
-- list comprehension, para adicionar um sufixo as strings contidas numa lista. 

addSuffix :: String -> [String] -> [String]
addSuffix s str = [ str ++ s | str <- str]

-- 3.Escreva uma funcao anosDeNascimento :: [Int] -> [Int] que receba uma lista de idades, 
-- selecione as que sao maiores que 20 e, para cada uma das selecionadas, 
-- calcule o ano de nascimento correspondente (aproximado). 
-- Use a sintaxe de list comprehension.

anosDeNascimento :: [Int] -> [Int]
anosDeNascimento x = [2015-x | x <- x,x >= 20]