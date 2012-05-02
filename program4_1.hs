-- Section 4.1

units = [ "one", "two", "three", "four", "five", "six", "seven","eight", "nine"]
teens = [ "ten", "eleven", "twelve", "thirteen", "forteen", "fifteen",
          "sixteen", "seventeen", "eighteen", "nineteen" ] 
tens = [ "twnty", "thirty", "forty", "fifty", "sixty", "seventy",
         "eightry", "ninety"]

convert2 n = combine2 (digit2 n)
digit2 n = ( n `div`10, n `mod` 10)

combine2( 0, u + 1 ) = units !! u
combine2( 1, u ) = teens !! u
combine2( t + 2, 0 ) = tens !! t
combine2( t + 2, u + 1 ) = tens !! t ++ "-" ++ units !! u

convert3 n = combine3 (digits3 n)
digits3 n = ( n `div` 100, n `mod` 100)

combine3 ( 0, t + 1 ) = convert2 (t + 1)
combine3 ( h + 1, 0 ) = units !! h ++ " hundred"
combine3 ( h + 1, t + 1 ) = units !! h ++ " hundred and " ++ convert2 (t+1)

convert6 n = combine6 (digits6 n)
digits6 n = ( n `div` 1000, n `mod` 1000)

combine6 ( 0, h + 1 ) = convert3 (h + 1)
combine6 ( m + 1, 0 ) = convert3 (m + 1) ++ " thousand"
combine6 ( m + 1, h + 1 ) = 
         convert3 (m + 1) ++ " thousand" ++ link(h+1) ++ convert3 (h + 1)

link h
     | h < 100 = " and "
     | otherwise = " "

convert = convert6

{-
link h = if h < 100
         then " and "
         else " "
-}