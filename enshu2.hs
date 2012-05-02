-- 2.1.4
{- (+(-1))
   f x = x + (-1)
   (+1) はセクションだが (-1) はセクションではない。ただの値として扱われる
-}

-- 2.1.6
{- 2個目が正しい
   (+) x y = x + y
           = (x+) y
-}

-- 2.2.2
sumsqrs x y z = m1^2 + m2^2
         where
         m1 = x `max` y `max` z
         m2 = ( x + y + z ) - m1 -mi
         mi = x `min` y `min` z

sumsqrs2 x y z = x^2 + y^2 + z^2 - mi^2
          where
          mi = x `min` y `min` z

-- 2.3.1
{-
import Char
nextlet x
        | x == 'Z' = 'A'
        |otherwise = chr (ord x + 1)
-}

-- 2.4.1
age (d, m, y) (d', m', y')
    |m < m'= y' - y
    |m == m' && d <= d' = y' - y
    |otherwise = y' - y - 1

-- 2.8.1
const :: a -> b -> a
const x y = x

subst :: ( a -> b -> g ) -> ( a - > b ) -> a -> g
subst f g x = f x ( g x )

fix :: ( ( a -> b ) -> a -> b ) -> a -> b
fix f x = f ( fix f ) x