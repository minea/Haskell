-- Section 2.3

isdigit x = '0' <= x (&&) x <= '9'
isupper x = 'A' <= x (&&) x <= 'Z'
islower x = 'a' <= x (&&) x <= 'z'

{-
capitalise :: Char -> Char
capitalise x
           | islower x = `chr` (offset + `ord` x)
           | otherwise = x
           where
           offset = `ord` 'A' - `ord` 'a'
-}

