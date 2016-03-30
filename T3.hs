-- T3


-- ex1

listQuad :: [Int] -> [Int]

listQuad [] = []

listQuad (x:xs) = x^2 : listQuad xs


-- ex2

addSr :: [String] -> [String]

addSr [] = []

addSr (x:xs) = ("Sr. " ++ x) : addSr xs

-- ex3

count :: String ->Int

count [] = 0

count (x:xs)
   |x == ' ' = 1 + count xs
   |otherwise = count xs

-- ex4

opera :: [Float] -> [Float]

opera [] = []

opera (x:xs) = ((3*(x^2))+2)/(x+1) : opera xs

-- ex5

selecNeg :: [Int] -> [Int]

selecNeg [] = []

selecNeg (x:xs)
   |x < 0 = x : selecNeg xs
   |otherwise = selecNeg xs

-- ex6

semVogais :: String -> String

semVogais x = [ y | y <- x , not $ elem y "aeiouAEIOU"]


-- ex7

semVogais2 :: String -> String

semVogais2 [] = []

semVogais2 (x:xs)
   |x == 'a' = semVogais2 xs
   |x == 'e' = semVogais2 xs
   |x == 'i' = semVogais2 xs
   |x == 'o' = semVogais2 xs
   |x == 'u' = semVogais2 xs
   |otherwise = x : semVogais2 xs

-- ex8



-- ex9

codifica :: String -> String

codifica [] = []

codifica (x:xs)
   |x == ' ' = ' ' : codifica xs
   |otherwise = '-' :codifica xs

-- ex10

charFound :: Char -> String -> Bool

charFound y [] = False

charFound y (x:xs)
   |x == y = True
   |otherwise = charFound y xs

-- ex11

translate :: [(Float, Float)] -> [(Float, Float)]

translate [] = []

translate (x:xs) = (fst x + 2, snd x + 2) : translate xs

-- ex12

prodList :: [Int] -> [Int] -> [Int]

prodList x [] = []

prodList [] y = []

prodList (x:xs) (y:ys) = (x*y) : prodList xs ys

-- ex13

prod :: [Int] -> [Int] -> [Int]

prod x y = [ a*b | a <- x, b <- y]

-- ex14

geraTabela :: Int -> [(Int, Int)]

geraTabela 0 = []

geraTabela x = aux 1 x

aux :: Int -> Int -> [(Int, Int)]

aux x y 
   | x == y + 1 = []
   |otherwise = (x, x^2) : aux (x+1) y