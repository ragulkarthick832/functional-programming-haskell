commonPrefix :: (Eq a) => [a] -> [a] -> [a]
commonPrefix _ [] = []
commonPrefix [] _ = []
commonPrefix (x:xs) (y:ys)
 | x == y = x : commonPrefix xs ys
 | otherwise = []


longestCommonPrefix :: (Eq a) => [[a]] -> [a]
longestCommonPrefix [] = []
longestCommonPrefix (x:xs) = foldl commonPrefix x xs
