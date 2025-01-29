startEnd :: (Ord a) => [a] -> (a, a)
startEnd xs = (head xs, last xs)
