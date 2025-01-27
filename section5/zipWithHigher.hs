-- implement zipWith
-- It takes a function and two lists as parameters and then joins two lists by applying the function



zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' f _ [] = []
zipWith' f [] _ = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys
