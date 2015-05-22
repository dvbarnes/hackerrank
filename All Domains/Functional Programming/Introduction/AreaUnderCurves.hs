import Text.Printf (printf)

-- This function should return a list [area, volume].
solve :: Int -> Int -> [Int] -> [Int] -> [Double]
solve l r a b = [solve' a b l - solve' a b r , 0 ]

solve' :: Int -> Int -> [Int] -> [Int] -> [Double]
solve' l r a b = [f a b l 0 - f a b r 0, 0 ]

f :: [Int] -> [Int] -> Int -> Double -> Double
f [] [] _ n =  n
f (a:as) (b:bs) x n = f as bs x (n + fromIntegral(a) * (fromIntegral(x) ** fromIntegral(b)))

--Input/Output.
main :: IO ()
main = getContents >>= mapM_ (printf "%.1f\n"). (\[a, b, [l, r]] -> solve l r a b). map (map read. words). lines
