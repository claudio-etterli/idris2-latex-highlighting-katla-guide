module CodeExample

sumSquares : Num a => List a -> a
sumSquares = foldl acc 0
  where
    acc : a -> a -> a
    acc sum v = sum + v * v

