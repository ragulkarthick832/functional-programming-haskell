-- Function to exchange two values
exchange :: a -> a -> (a, a)
exchange x y = (y, x)

main :: IO ()
main = do
  putStrLn "Enter the first number:"
  input1 <- getLine
  putStrLn "Enter the second number:"
  input2 <- getLine
  
  -- Read numbers (assuming they are integers)
  let num1 = read input1 :: Int
  let num2 = read input2 :: Int
  
  -- Swap the numbers
  let (swapped1, swapped2) = exchange num1 num2
  
  -- Print the results
  putStrLn ("After exchange: First number is " ++ show swapped1 ++ " and Second number is " ++ show swapped2)

