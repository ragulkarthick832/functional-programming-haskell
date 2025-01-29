quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x:xs) = 
 let smallerSide = filter (<=x) xs
     largerSide  = filter (>x) xs
 in quickSort smallerSide ++ [x] ++ quickSort largerSide

