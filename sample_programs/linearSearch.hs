linearSearch :: (Eq a) => [a] -> a  -> Bool
linearSearch [] _ = False
linearSearch (x:xs) t
 | x == t = True
 | otherwise = linearSearch xs
