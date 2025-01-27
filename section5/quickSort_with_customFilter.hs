filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
 | p x = x : filter' p xs
 | otherwise = filter' p xs



quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x:xs) = 
 let smallerOrEqual = filter' (<=x) xs
     larger = filter' (>x) xs
 in quickSort smallerOrEqual ++ [x] ++ quickSort larger
