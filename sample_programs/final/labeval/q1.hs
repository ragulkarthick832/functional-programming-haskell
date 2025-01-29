import Data.List (group, sort)
anyOccursNTimes :: (Eq a, Ord a) => [a] -> Int -> Bool
anyOccursNtimes [] _ = False
anyOccursNTimes xs n = any (\g -> length n >= n) (group (sort xs))
