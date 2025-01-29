quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x:xs) = 
 let smallerSort = [ a | a <- xs, a <= x]
     largerSort = [ a | a <- xs, a > x] 

 in  quickSort smallerSort ++ [x] ++ quickSort largerSort


mergeSort :: (Ord a) =>  [a] -> [a]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort xs = merge (mergeSort left) (mergeSort right)
 where 
    (left,right) = splitAt (length xs `div` 2) xs
    merge [] ys = ys
    merge xs [] = xs
    merge (x:xs) (y:ys)
       | x <= y = x : merge xs (y:ys)
       | otherwise = y : merge (x:xs) ys




bubbleSort :: (Ord a) => [a] -> [a]
bubbleSort [] = []
bubbleSort xs = bubble xs (length xs)
 where
   bubble ys 0 = ys
   bubble ys n = bubble (bubblepass ys) (n-1)
   bubblepass [x] = [x]
   bubblepass (x:y:zs)
    | x > y = y : bubblepass(x:zs)
    | otherwise = x : bubblepass(y:zs)

