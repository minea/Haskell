-- Section 4.3

unline = foldr1 (insert "\n")
unwords = foldr1 (insert " ")
unparas = foldr1 (insert "\n")
insert a xs ys = xs ++ [a] ++ ys
lines = foldr (breakon "\n") [[]]
words = filter ( /= []) . foldr (breakon " ") [[]]
parss = filter ( /= []) . foldr (breakon [] ) [[]]
breakon a x xss
        | x == a = [[]] ++ xss
        |otherwise = [[x] ++ hd xss ] ++ t1 xss

countline = (#) . lines
countwords = (#) . concat . map words . lines
countparas = (#) . paras . lines

mormalise :: text -> text
mormalise = unparse . parse
parse :: text -> [[[word]]]
parse = map ( map words ) . paras . lines
unparse :: [[[word]]] -> text
unparse = unlines . unparas. map(map unwords)