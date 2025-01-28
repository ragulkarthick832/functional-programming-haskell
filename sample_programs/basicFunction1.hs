-- summation of array
-- maximum element in array
-- length of the array
-- reverse the array


sum_list :: [Int] -> Int
sum_list [] = 0
sum_list (x:xs) = x + sum_list xs


maxli :: [Int] -> Int
maxli [x] = x 
maxli (x:xs) = max x (maxli xs)

lengthli :: [Int] -> Int
lengthli [] = 0
lengthli (x:xs) = 1 + lengthli xs


reverseli :: [Int] -> [Int]
reverseli [] = []
reverseli (x:xs) = reverseli xs ++ [x]


main :: IO ()
main = do
 let sample = [1,2,3,4,5]
 let summ = sum_list sample
 let maximum_element = maxli sample
 let length_list = lengthli sample
 let reverse_list = reverseli sample
 putStrLn $ "The sum of the list is " ++ show summ ++ "\nThe length of the list is " ++ show maximum_element ++ "\nThe reversed part: " ++ show 
