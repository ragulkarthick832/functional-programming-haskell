bmiTell :: Double -> Double -> String
bmiTell weight height
 | bmi <= 18.5 = "you're underweight, you emo, you!"
 | bmi <= 25.0 = "you're supposedly normal"
 | bmi <- 30.0 = "you're whale"
 | otherwise = "you're fat"
 where bmi = weight / height ^ 2
