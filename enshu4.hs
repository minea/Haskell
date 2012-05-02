import Char
toDec [] = 0
toDec (x:xs) = x * ( 10 ^ length xs) + ( toDec xs )

toDec2 xs = foldl f 0 xs
       where f n r = n * 10 + r

toDec3 xs = fst (foldr f (0, 1) xs)
       where f l (n, d) = (l * d + n, d * 10)

toDec4 xs = toDec' 0 xs
       where toDec' n [] = n
             toDec' n (x:xs) = toDec' (n * 10 + x) xs