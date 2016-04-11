--ex1

addSuffix :: String -> [String] -> [String]
addSuffix suf nome = [a ++ suf | a <- nome]

--ex2

countShorts :: [String] -> Int
countShorts [] = 0
countShorts (x:xs) = if length x<5 then 1 + countShorts xs else countShorts xs 

--ex3

countShorts2 :: [String] -> Int
countShorts2 lstrg = length[x | x <- lstrg, length(x) < 5]

--ex4

ciclo :: Int -> [Int] -> [Int]
ciclo n lista = if n /= 0 then lista ++ ciclo (n-1) lista else []

--ex5

numera :: [String] -> [(Int, String)]
numera x = aux 1 x

aux :: Int -> [String] -> [(Int, String)]
aux x [] = []
aux x (y:ys) = (x, y) : aux (x+1) ys

--ex6

--a) [(2,3), (2,5), (4,5)]
--b) ["lazyfrog", "lazydog", "bigfrog", "bigdog"]
--c) "p-r-l-l-p-p-d-"

--ex7

pairWithAll :: a -> [b] -> [(a,b)]
pairWithAll _ [] = []
pairWithAll a (x:xs) = (a,x) : pairWithAll a xs

crossProduct :: [Int] -> [Int] -> [(Int,Int)]
crossProduct [] _ = []
crossProduct _ [] = []
crossProduct (x:xs) lis = (pairWithAll x lis) ++ crossProduct xs lis

--ex8

genRects :: Int -> (Int,Int) -> [(Float,Float,Float,Float)]
genRects n (ix,jy) = [((fromIntegral ix)+x,fromIntegral jy,5.5,5.5) | x <- [0.0,5.5..5.5*(fromIntegral (n - 1))]]

--ex9

func :: [(Int,Int)] -> ([Int],[Int])
func [] = ([],[])
func (x:xs) = (fst x:(fst (func xs)), snd x: (snd (func xs)))

--ex10

func2 :: [(Int,Int)] -> ([Int],[Int])
func2 lis = ([fst x | x <- lis],[snd x| x <-lis])

--ex11

func3 :: [(Int,Int)] -> ([Int],[Int])
func3 lis = (map fst lis,map snd lis)

--ex12