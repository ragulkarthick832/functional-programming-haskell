quickSort :: [Int] -> [Int]
quickSort [] = []
quickSort (x:xs) = 
 let largervalue = filter (>=x) xs
     smallervalue = filter (<x) xs
 in 
   quickSort smallervalue ++ [x] ++ quickSort largervalue

