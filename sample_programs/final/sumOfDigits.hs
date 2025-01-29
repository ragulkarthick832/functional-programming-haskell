sumOfDigits :: Int -> Int
sumOfDigits 0 = 0
sumOfDigits x = (mod x 10) + sumOfDigits (div x 10)
