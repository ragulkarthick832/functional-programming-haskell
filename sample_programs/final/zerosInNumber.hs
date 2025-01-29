countZero :: [Int] -> Int
countZero [] = 0
countZero (x:xs)
 | x == 0 = 1 + countZero xs
 | otherwise = countZero xs
