findMinimum :: (Ord a) => [a] -> a
findMinimum [x] = x
findMinimum (x:xs) = min x (findMinimum xs)

dropElementFromList :: (Ord a) => [a] -> a -> [a]
dropElementFromList  [] _ = []
dropElementFromList  (x:xs) a
 | a == x = xs 
 | otherwise = x : dropElementFromList xs a

selectionSort :: (Ord a) => [a] -> [a]
selectionSort [] = []
selectionSort [x] = [x]
selectionSort xs = minimumElement : selectionSort (dropElementFromList xs minimumElement)
  where 
    minimumElement = findMinimum xs
  
