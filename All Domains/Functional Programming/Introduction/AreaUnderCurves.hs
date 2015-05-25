import Text.Printf (printf)

solve :: Int -> Int -> [Int] -> [Int] -> [Double]
solve l r a b = [sA a b (realToFrac l) n dx, sV a b (realToFrac l) n dx ]
	where n = ((realToFrac (r-l)) / dx)
	      dx = realToFrac(1)/1000

sA :: [Int] -> [Int] -> Double -> Double -> Double -> Double
sA a b l n dx = sA' a b l n dx 0 0.0

sA' :: [Int] -> [Int] -> Double -> Double -> Double -> Int -> Double -> Double
sA' a b l 0 dx i result = result
sA' a b l n dx i result = sA' a b l (n-1) dx (i+1) (result + (fx a b xi 0.0) * dx)
	where xi = l + realToFrac(i) * dx

sV :: [Int] -> [Int] -> Double -> Double -> Double -> Double
sV a b l n dx = sV' a b l n dx 0 0.0

sV' :: [Int] -> [Int] -> Double -> Double -> Double -> Int -> Double -> Double
sV' a b l 0 dx i result = result
sV' a b l n dx i result = sV' a b l (n-1) dx (i+1) (result + (sAx (xi) * dx))
	where xi = fx a b (l + realToFrac(i) * dx) 0.0

sAx :: Double -> Double
sAx xi = pi * xi ** 2

fx :: [Int] -> [Int] -> Double -> Double -> Double
fx [] [] _ result = result
fx (a:as) (b:bs) x result = fx as bs x (result + realToFrac a * (realToFrac x ** realToFrac b))


--Input/Output.
main :: IO ()
main = getContents >>= mapM_ (printf "%.1f\n"). (\[a, b, [l, r]] -> solve l r a b). map (map read. words). lines
