-- Section 6.4 (:set +s で計算にかかった時間を表示)
import List
insert2 x [] = [ x ]
insert2 x (y:ys)
       | x <= y = x : y :ys
       | otherwise = y : insert2 x ys

msort xs
      | n <= 1 = xs
      | otherwise = merge ( msort us ) ( msort vs )
      where  n = length xs
             us = take ( n `div` 2 ) xs
             vs = drop ( n `div` 2 ) xs

merge [] ys = ys
merge ( x : xs) [] = x : xs
merge ( x : xs) ( y : ys)
      | x <= y = x : merge xs ( y : ys )
      | otherwise = y : merge ( y : ys ) ys

qsort [] = []
qsort (x:xs) = qsort [ u | u <- xs, u < x] ++ [ x ] ++
               qsort [ u | u <- xs, u >= x]

isort :: Ord a => [a] -> [a]
isort = foldr ins []
ins x [] = [x]
ins x (y:ys)
    | x <= y = x:y:ys
    | otherwise = y: ins x ys

-- 乱数発生関数 take 10 (randn 100 1) のようにtakeで何個取り出すかを指定して使う
randn n x = [v `mod` n | v <- rands x]

rands x = x : rands fx
      where
      fx = (a * x + b) `mod` (2^32)
      a = 1103515245
      b = 12345

t_sort sort n = length ( sort ( take n ( rands 13 ) ) )