-- 3.2.3
import List
counNeg ns = length [ xs | xs <- ns, xs < 0 ]
impairs n x y = [ (i,j) | i <- [1..x], j <- [y..n] ]
mindivisor n = head [ d | d <- [2..], n `mod` d == 0]

-- 3.3.10
riffle xs = concat [[a,b] | (a,b) <- zip es os]
       where
       es = [n | n <- xs, odd n]
       os = [n | n <- xs, even n]

-- 3.3.12
scare ns ms = (b, c)
      where
      b = length [ (x,y) | (x,y) <- zip ns ms, x == y ]
      c = 4 - length (ns \\ ms) -b

-- 3.5.5
remdups (a:as) = foldl f [a] as
        where
         f ls r | last ls == r = ls
                | otherwise = ls ++ [r]

remdups2 [] = [] -- 長さ0
remdups2 [a] = [a] -- 長さ1
remdups2 (a:a' :as) | a == a' = remdups2 (a':as) -- 長さ1以上
                    | otherwise = a: remdups2 (a':as)

remdups3 [] = []
remdups3 (a:as) = foldr f (tail [a]) as
         where
         f l rs | l == head rs = rs
                | otherwise = l:rs
