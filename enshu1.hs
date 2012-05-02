-- 1.1.2
max2 x y
    | x >= y = x
    | otherwise = y
-- 1.1.3
circle_dimension  r = r * 2 * ( 22 / 7 )

-- 1.4.3
sign :: Int -> Int
sign x
     | x > 0 = 1
     | x < 0 = -1
     | otherwise = 0

-- 1.4.4
-- one :: Alpha -> Int
one x = 1
-- apply ($) :: ( Alpha -> Beta ) -> Alpha -> Beta
{-
全て同じ演算
(sing . square ) 1
sign ( square 1 )
sign $ square 1
-}
apply f x = f x
-- compose (.) :: ( Beta -> Gamma ) -> ( Alpha -> Beta ) -> Alpha -> Gamma
compose f g x = f ( g x )