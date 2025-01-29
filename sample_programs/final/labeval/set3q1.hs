initsegs :: [a] -> [[a]]
initsegs [] = [[]]
initsegs xs = initsegs (init xs) ++ [xs]
