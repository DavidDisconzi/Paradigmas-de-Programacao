-- EXEMPLOS

-- 1.As funcoes de alta ordem any e all sao pre-definidas na biblioteca Prelude do Haskell (veja secao Special Folds). 
-- Estude e teste essas funcoes e apresente 2 exemplos de uso de cada uma delas.

-- ANY
--a) 
verif :: Int -> [Int] -> Bool
verif x cad = any(x==)cad
-- Verifica se x esta presente em uma lista de inteiros

-- b) 
intervalo :: [Int] ->  Bool
intervalo x = any(>0)x
-- Diz se há algum elemento maior que 0 em uma lista de inteiros

-- ALL
--a)
igual :: Int -> [Int] -> Bool
igual y nums = all(y==)nums
-- Compara se o elemento y é igual a todos os elemento de all

--b) 
func :: [Int] -> Bool
func x= all(<0)x
-- Diz se há menores que 0

-- 2.Em Haskell, o símbolo '$' pode ser usado para escrever códigos ainda mais curtos. 
-- Descubra seu significado e apresente 2 exemplos de uso.

-- $
--a)
triplo :: [Int] -> [Int]
tripo cad =(*3)  <$> cad
--Cada elemento da lista é triplicado

--b)
exp :: int -> int -> int -> int
exp x y k = map ($ x) [(y+),(k*)]
-- Faz um pequeno calculo

-- FUNCOES COMPOSTAS

--a)
comp :: String -> String -> [Int] -> String
comp str1 str2  x
map (head . tail . tail) [str1, srt2, x]
-- Concatena a head de str1, tail de str2 e x

--b)
comp2 :: Int ->  Int
comp2 x= ((+x).) . (*)
-- Calculo

-- REFERENCIAS
-- http://lambda.jstolarek.com/2012/03/function-composition-and-dollar-operator-in-haskell/
-- http://stackoverflow.com/questions/940382/haskell-difference-between-dot-and-dollar-sign
-- http://zvon.org/other/haskell/Outputprelude/any_f.html
-- http://zvon.org/other/haskell/Outputprelude/all_f.html
-- http://pt.slideshare.net/skosta/programao-funcional-e-haskell