import Data.Char

shiftString :: String -> Int -> String
shiftString "" _ = ""
shiftString (x:xs) n
 | isLower x = chr (ord 'a' + ((ord x - ord 'a' + n) `mod` 26)) : shiftString xs n
 | isUpper x = chr (ord 'A' + ((ord x - ord 'A' + n) `mod` 26)) :shiftString xs n
 | otherwise = x : shiftString xs n



caesarCipher :: [String] -> [Int] -> [String]
caesarCipher [] _ = []
caesarCipher _ [] = []
caesarCipher (x:xs) (y:ys) = shiftString x y : caesarCipher xs ys
