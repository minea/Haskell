import List
import Char

--romannum :: [Char] -> Int
romannum [] = 0
romannum (r:rs) = (romannumber r) + romannum rs

romannumber :: Char -> Int
romannumber n
            | n == 'M' = 1000
            | n == 'D' = 500
            | n == 'C' = 100
            | n == 'L' = 50
            | n == 'X' = 10
            | n == 'V' = 5
            | n == 'I' = 1

{-
capitalise :: Char -> Char
capitalise x
           | islower x = `chr` (offset + `ord` x)
           | otherwise = x
           where
           offset = `ord` 'A' - `ord` 'a'
-}

