concat' :: [String] -> String
concat' xs = foldl (\acc x -> acc ++ x) "" xs
