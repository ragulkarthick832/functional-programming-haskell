head' :: [a] -> a
head' [] = error "Cannot call head' on my empty list"
head' (x:xs) = x
