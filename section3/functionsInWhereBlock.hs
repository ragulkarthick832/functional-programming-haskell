calcBims :: [(Double, Double)] -> [Double]
calcBims xs = [bmi w h | (w,h) <- xs]
 where bmi weight height = weight / height ^ 2
