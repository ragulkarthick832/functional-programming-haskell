applyNTimes :: Int -> (Int->Int) -> Int -> Int
applyNTimes a f n
 | n == 0 = a
 | otherwise = applyNTimes (f a) f (n-1) 
