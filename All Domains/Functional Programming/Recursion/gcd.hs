module Main where

gcd' :: Integral a => a -> a -> a
gcd' n m = gcd'' (max n m) (min n m)

gcd'' :: Integral a => a -> a -> a
gcd'' n m 
	| n < m = n
	| m == 0 = n
	| otherwise = gcd' (n-m) m
	
main = do
  input <- getLine
  print . uncurry gcd' . listToTuple . convertToInt . words $ input
 where
  listToTuple (x:xs:_) = (x,xs)
  convertToInt = map (read :: String -> Int)
