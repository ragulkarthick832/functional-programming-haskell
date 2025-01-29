product :: Int -> Int -> Int
product _ 0 = 0
product a b
 | b > 0 = a + product a (b-1)
 | b < 0 = - (product a (-b))
