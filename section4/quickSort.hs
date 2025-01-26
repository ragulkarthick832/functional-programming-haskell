quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x:xs) =
 let smallerOrEqual = [a | a <- xs, a <= x]
  larger = [a | a <-xs, a > x]
  in quickSort smallerOrEqual ++ [x] ++ quickSort larger
