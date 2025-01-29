fml :: (Ord a) => [a] -> (a,a,a)
fml xs = (head xs, xs !! (length xs `div` 2) , last xs)
