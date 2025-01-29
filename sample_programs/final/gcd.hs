gcd :: Int -> Int -> Int
gcd a b 
  | a < b     = gcd b a
  | b == 0    = a
  | otherwise = gcd b (a `mod` b)

