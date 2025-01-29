hailStone :: Int -> [Int]
hailStone 1 = [1]
hailStone x
 | even x = x : hailStone (div x 2)
 | odd x = x : hailStone (3*x + 1)
