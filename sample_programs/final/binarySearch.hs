
binarySearch :: (Ord a) => [a] -> a -> Bool
binarySearch [] _ = False
binarySearch xs a
 | mid == a = True
 | mid > a = binarySearch (take midIndex xs) a
 | otherwise = binarySearch (drop (midIndex + 1) xs) a
 where 
   lenList = length xs
   midIndex = lenList `div` 2
   mid = xs !! midIndex
