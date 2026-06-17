module Classwork_test3 where

-- ============================================================
-- CSCE 330 — Test 3 Classwork
-- Two implementations per problem (6 problems total)
-- ============================================================


-- ============================================================
-- Part A — Program 6 (Chapters 4 & 5)
-- ============================================================

-- ------------------------------------------------------------
-- Problem 1: divisors
-- Returns every positive divisor of n (1 through n).
-- Required construct: list comprehension
-- ------------------------------------------------------------

divisors :: Int -> [Int]
divisors n = [ x | x <- [1..n], n `mod` x == 0 ]

divisors' :: Int -> [Int]
divisors' n = filter (\x -> n `mod` x == 0) [ x | x <- [1..n] ]


-- ------------------------------------------------------------
-- Problem 2: letterGrade
-- Maps a numeric score to a letter grade.
-- Required construct: guards, conditional, or pattern matching
-- ------------------------------------------------------------

letterGrade :: Int -> Char
letterGrade s =
    if s >= 90 then 'A'
    else if s >= 80 then 'B'
    else if s >= 70 then 'C'
    else if s >= 60 then 'D'
    else 'F'

letterGrade' :: Int -> Char
letterGrade' s
    | s >= 90    = 'A'
    | s >= 80    = 'B'
    | s >= 70    = 'C'
    | s >= 60    = 'D'
    | otherwise  = 'F'


-- ------------------------------------------------------------
-- Problem 3: third
-- Returns the third element of a list (assumes length >= 3).
-- Any approach allowed.
-- ------------------------------------------------------------

third :: [a] -> a
third xs = head (tail (tail xs))

third' :: [a] -> a
third' (_:_:x:_) = x


-- ============================================================
-- Part B — Program 7 (Chapters 6 & 7)
-- ============================================================

-- ------------------------------------------------------------
-- Problem 4: squareEvens
-- Returns the squares of the even elements of an Int list.
-- Required construct: map and/or filter (no recursion, no comprehension)
-- ------------------------------------------------------------

squareEvens :: [Int] -> [Int]
squareEvens xs = squareAll es
    where
        es = filter even xs

squareAll [] = []
squareAll (n:ns) = [n*n] ++ squareAll ns

squareEvens' :: [Int] -> [Int]
squareEvens' xs = map (^2) (filter even xs)


-- ------------------------------------------------------------
-- Problem 5: product' / product''
-- Returns the product of all elements (product of [] is 1).
-- Note: 'product' is in the Prelude, so we use product' and product''
-- Required construct: foldr or explicit recursion
-- ------------------------------------------------------------

product' :: [Int] -> Int
product' = foldr (*) 1

product'' :: [Int] -> Int
product'' [] = 1
product'' (x:xs) = x * product'' xs


-- ------------------------------------------------------------
-- Problem 6: count / count'
-- Returns the number of times x occurs in a list.
-- Any approach allowed.
-- ------------------------------------------------------------

count :: Eq a => a -> [a] -> Int
count x xs = length (filter (x==) xs)

count' :: Eq a => a -> [a] -> Int
count' x xs = sum (map (\y -> if x==y then 1 else 0) xs)
