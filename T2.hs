-- T2

-- ex1 OK
somaQuad :: Int -> Int -> Int
somaQuad x y = x^2 + y^2

-- ex2 OK
hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads l1 l2 = if (head l1) == (head l2) then True else False

-- ex3 OK
addSr :: [String] -> [String] 
addSr lis = map ("SR. " ++) lis

-- ex4 OK
numEsp :: String -> Int
numEsp lis = length (filter (==' ') lis)

-- ex5 OK
calcLis :: [Float] -> [Float]
calcLis lis = map (\n -> 3*n^2 + 2/n + 1) lis

-- ex6 OK
selecNeg :: [Integer] -> [Integer]
selecNeg lis = filter (<0) lis

-- ex7 OK
umEcem :: [Int]->[Int]
umEcem listaNumber = filter(\x -> x >= 1 && x <= 100) listaNumber

-- ex8 OK
verifAge :: [Int] -> [Int]
verifAge n = filter (\n -> n < 46) n

-- ex9 OK
retPar :: [Int] -> [Int]
retPar lis = filter even lis

-- ex10 OK
charFound :: Char -> String -> Bool
charFound c s = any (== c) s

-- ex11 OK
 > takeWhile(<500)(filter even [1..]) 
 --Este exemplo cria uma lista de 1 a infinito, e pega todos os numeros de 1 a 500 que forem pares


-- ex12 OK
findA :: [String] -> [String]
findA x = if (last (takeWhile(/= ' ')(head x)))=='a' then (head x) : findA(tail x) else findA(tail x)