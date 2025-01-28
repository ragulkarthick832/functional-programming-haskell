import Data.Char

stringShifter :: String -> Int -> String
stringShifter "" _ = ""
stringShifter (x:xs) a
 | isLower x = shiftChar x 'a' a ++ stringShifter xs a
 | isUpper x = shiftChar x 'A' a ++ stringShifter xs a
 | otherwise = x : stringShifter xs a


shiftChar :: Char -> Char -> Int -> String
shiftChar x base a = [chr (baseCode + ((ord x - baseCode + a) `mod` 26))]
 where 
   baseCode = ord base 

caesar_cipher :: [(String)] -> [Int] -> [(String)]
caesar_cipher [] _ = []
caesar_cipher _ [] = []
caesar_cipher (x:xs) (y:ys) = (stringShifter x y) : caesar_cipher xs ys
