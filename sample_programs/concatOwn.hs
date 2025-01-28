concat' :: [String] -> String
concat' [] = ""
concat' xs = foldl (\acc x -> acc ++ x) "" xs
