import Char
import List
-- Report 武市先生の課題 + 感想 2010/8/17 工夫したところの説明があれば嬉しい
-- +javaで
-- ワードもしくはpdfで。プログラムの説明付きでお願いします
-- romannum "MCMXCVIII"(M CM XC VIII") -> 1998
romannum :: [ Char ] -> Int
romannum [] = []
romannum rs (u:us) =



-- I = 1, V = 5, X = 10, L = 50, C = 100, D = 500, M = 1000
-- 制限:3999まで
-- ルールをきちんと 4.1をヒントに♪
-- IIV(これはダメ) IV(これはok)
romachar = ['I','V','X','L','C','D','M']