-- Section 6.5.2
import List

-- (i,j) はすでに出ていた組み合わせを保持
safe p n = and [ not (check(i,j) (m,n)) | (i,j) <- zip [1..length p ] p]
               where m = length p + 1

check (i,j) (m,n) = (j == n) || (i + j == m + n) || (i - j == m - n)

queens 0 = [[]]
queens ( m + 1 ) = [ p ++ [n] | p <- queens m, n <- [1..8], safe p n ]

-- 乱数発生関数 take 10 (randn 100 1) のようにtakeで何個取り出すかを指定して使う
randn n x = [v `mod` n | v <- rands x]

rands x = x : rands fx
      where
      fx = (a * x + b) `mod` (2^32)
      a = 1103515245
      b = 12345
