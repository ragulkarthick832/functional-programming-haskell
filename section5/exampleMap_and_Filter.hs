-- find the largest number under 100,000 divisible by 3829

largestDivisible :: Integer
largestDivisible = head ( filter p [100000,99999..])
 where p x = x `mod` 3829 == 0
