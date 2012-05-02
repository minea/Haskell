import List
import Char

romannum :: [Char] -> Int
romannum [] = 0 -- パターンマッチでの終了処理
romannum [r] = romannumber r -- 1文字だった場合の処理
romannum (r:rs) -- 文字列の処理
         | r == 'I' && ((head rs) == 'V' || (head rs) == 'X') = (romannumber (head rs) - romannumber r) + romannum (tail rs)
         | r == 'X' && ((head rs) == 'L' || (head rs) == 'C') = (romannumber (head rs) - romannumber r) + romannum (tail rs)
         | r == 'C' && ((head rs) == 'D' || (head rs) == 'M') = (romannumber (head rs) - romannumber r) + romannum (tail rs)
         | otherwise = romannumber r + romannum rs
{- 4や90などを表現するための処理。
   1文字目にIやX、Cのいずれかが来て、2文字目にVなどの文字が来た場合に
   2文字目から1文字目を引いて合計に加える処理を行う。
   otherwiseは上記に該当しない処理を行う
-}

romannumber :: Char -> Int
romannumber n
            | n == 'M' = 1000
            | n == 'D' = 500
            | n == 'C' = 100
            | n == 'L' = 50
            | n == 'X' = 10
            | n == 'V' = 5
            | n == 'I' = 1
{- 与えられたアルファベットをローマ数字を対応させ、
   その数をアラビア数字で返すための対応表
-}