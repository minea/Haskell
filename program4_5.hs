-- Section 4.5
height p = length p
width p = length ( hd p )

above p q
      | p == q = p++q
beside p q
      | p == q = zipwith (++) (p, q)

stack = foldr1 (above)
spread = foldr1 (beside)
empty (h, m)
      | (h > 0) OR (w > 0) = copy(copy " " w) h
lfream