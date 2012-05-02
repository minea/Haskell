-- Section 4.2
strep xs
      | ys == [] = [0]
      | otherwise = ys
      where
        ys = dropwhile xs

-- Section 4.2.1

align xs ys
      | n > 0 = ( copy 0 n ++ xs, ys )
      | otherwise = (xs, copy 0 (-n) ++ ys)
      where
        n = length(ys) -  length(xs)

copy x n = [ x | j <- [ 1..n ]]
ucompare op xs ys = op us vs
      where 
      (us, vs) = align xs ys

-- Section 4.2.2
   