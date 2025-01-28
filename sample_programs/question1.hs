-- Write a Haskell function to concatenate all strings from a list of lists of strings, but only include strings that contain a specific character.
-- The function should take the character and the list of lists as inputs and use foldr to solve the problem.
-- 'a' [["apple", "banana"], ["grape", "pear"], ["orange", "plum"]]
-- "applebananagrapeorange"


checkFunction :: Char -> [String] -> [String] 
checkFunction _ [] = []
checkFunction ch xs = [x | x -> xs, ch `elem` x]


concatenateCondition :: Char -> [[String]] -> String
concatenateCondition _ [] = []
concatenateCondition ch = foldr (\xs acc -> concat (checkFunction ch xs) ++ acc ) ""
