binarySearch :: (Eq a, Ord a) => [a] -> a -> Bool
binarySearch [] _ = False
binarySearch xs a
  | mid == a = True
  | mid < a = binarySearch (drop (midIndex + 1) xs) a
  | otherwise = binarySearch (take midIndex xs) a
  where
    midIndex = length xs `div` 2
    mid = xs !! midIndex
