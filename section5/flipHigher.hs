-- takes function and returns a function that is like our original function, but with the first two arguements flipped.
flip' :: (a-> b -> c) -> (b -> a -> c)
flip' f = g
 where g x y = f y x
