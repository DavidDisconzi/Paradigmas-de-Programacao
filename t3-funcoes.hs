-- FUNCOES

-- 1.Escreva uma fun��o recursiva firstName :: String -> String que, 
-- dado o nome completo de uma pessoa, obtenha seu primeiro nome. 
-- Suponha que cada parte do nome seja separada por um espa�o e que n�o existam espa�os no in�cio ou fim do nome.

firstName :: String -> String
firstName str
	| str == [] = []
	| head str == ' ' = " "
	| otherwise = head str : firstName( tail str)

-- 2.Escreva uma fun��o firstName' :: String -> String com o mesmo resultado do exerc�cio anterior, 
-- mas sem usar recurs�o.

firstName' :: String -> String
firstName' str = takeWhile (/=' ') str		

-- 3.Escreva uma fun��o lastName :: String -> String que, dado o nome completo de uma pessoa, obtenha seu �ltimo sobrenome. 
-- Suponha que cada parte do nome seja separada por um espa�o e que n�o existam espa�os no in�cio ou fim do nome.

lastName :: String -> String
lastName str = dropWhile (/=' ') str	

-- 4.Escreva uma fun��o n�o-recursiva userName :: String -> String que, dado o nome completo de uma pessoa, 
-- crie um nome de usu�rio (login) da pessoa, formado por: primeira letra do nome seguida do sobrenome, tudo em min�sculas.

--import Data.Char 
--userName :: String -> String
--userName [] = []
--userName str = toLower (firstName' str) : toLower (lastName' str) 

 -- 5.Escreva uma fun��o n�o-recursiva encodeName :: String -> String que substitua vogais em uma string,
-- conforme o esquema a seguir: a = 4, e = 3, i = 1, o = 0, u = 00.

encodeName :: String -> String
encodeName [] = []
encodeName (x:xs) = marcador x ++ encodeName xs
  	 where
		marcador letra 
  			| letra == 'a'  = "4"
			| letra == 'e'  = "3"
			| letra == 'i'  = "1"
			| letra == 'o'  = "0"
			| letra == 'u'  = "00"
			| otherwise = letra:[]

-- 6.Escreva uma fun��o isElem :: Int -> [Int] -> Bool que verifique se um dado elemento pertence a uma lista.

isElem :: Int -> [Int] -> Bool
isElem valor [] = []
isElem valor (x:xs)
	| valor == x    = True
	| otherwise = isElem xs

-- 7.Escreva uma fun��o recursiva que retorne o n�mero de vogais em uma string.

numVogais :: String -> Int
numVogais str 
	| str == [] = 0
	| (head str) `elem` "aeiou" = vogais(tail(str)) +1
	| otherwise vogais(tail(str))

-- 8.Escreva uma fun��o n�o-recursiva que retorne o n�mero de consoantes em uma string.

numConsoantes :: String -> Int
numConsoantes str 
	| str == [] =0
	| (head str) `elem` " b,c,d,f,g,h,j,k,l,m,n,p,q,r,s,t,v,w,x,y,z" = numConsoantes(tail(str)) +1
	| otherwise numConsoantes(tail(str))

-- 9.Escreva uma fun��o n�o-recursiva isInt :: String -> Bool que verifique se uma dada string s� cont�m d�gitos (0 a 9).

 isInt :: String -> Bool
 isInt str
	| (length(filter(`elem` ['0','1','2'..'9']) str) == length (str)) = True
	| otherwise = False

-- 10.Escreva uma fun��o n�o-recursiva strToInt :: String -> Int que converta uma string em um n�mero inteiro, 
-- fazendo opera��es aritm�ticas com seus d�gitos (p.ex.: "356" = 3*100 + 5*10 + 6*1 = 356). 
-- Considere que a string seja um n�mero v�lido, isto �, s� contenha d�gitos de 0 a 9.

-- N�O FEITA


