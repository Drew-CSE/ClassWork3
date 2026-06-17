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
divisors n = []

divisors' :: Int -> [Int]
divisors' n = []


-- ------------------------------------------------------------
-- Problem 2: letterGrade
-- Maps a numeric score to a letter grade.
-- Required construct: guards, conditional, or pattern matching
-- ------------------------------------------------------------

letterGrade :: Int -> Char
letterGrade s = '?'

letterGrade' :: Int -> Char
letterGrade' s = '?'


-- ------------------------------------------------------------
-- Problem 3: third
-- Returns the third element of a list (assumes length >= 3).
-- Any approach allowed.
-- ------------------------------------------------------------

third :: [a] -> a
third xs = head xs

third' :: [a] -> a
third' xs = head xs


-- ============================================================
-- Part B — Program 7 (Chapters 6 & 7)
-- ============================================================

-- ------------------------------------------------------------
-- Problem 4: squareEvens
-- Returns the squares of the even elements of an Int list.
-- Required construct: map and/or filter (no recursion, no comprehension)
-- ------------------------------------------------------------

squareEvens :: [Int] -> [Int]
squareEvens xs = []

squareEvens' :: [Int] -> [Int]
squareEvens' xs = []


-- ------------------------------------------------------------
-- Problem 5: product' / product''
-- Returns the product of all elements (product of [] is 1).
-- Note: 'product' is in the Prelude, so we use product' and product''
-- Required construct: foldr or explicit recursion
-- ------------------------------------------------------------

product' :: [Int] -> Int
product' xs = -1

product'' :: [Int] -> Int
product'' xs = -1


-- ------------------------------------------------------------
-- Problem 6: count / count'
-- Returns the number of times x occurs in a list.
-- Any approach allowed.
-- ------------------------------------------------------------

count :: Eq a => a -> [a] -> Int
count x xs = -1

count' :: Eq a => a -> [a] -> Int
count' x xs = -1