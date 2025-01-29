merge :: (Ord a) => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
 | x <= y = x : (merge xs (y:ys))
 | otherwise = y : (merge (x:xs) ys)



splitlist :: (Ord a) => [a] -> ([a], [a])
splitlist xs = (take mid xs,drop mid xs)
 where 
   l = length xs
   mid = div l 2 

mergeSort :: (Ord a) => [a] -> [a]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort xs = merge (mergeSort left) (mergeSort right)
 where
   (left,right) = splitlist xs 
