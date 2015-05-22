solve :: Double -> Double
solve x = solve' x 0 0.0

solve' :: Double -> Int -> Double -> Double
solve' _ 10 n = n
solve' x i n = solve' x (i+1) n + (calc x (fromIntegral i))

calc::Double -> Double-> Double
calc x i = (x** i / factorial(i))

factorial n = product [n, n-1 .. 1]

main :: IO ()
main = getContents >>= mapM_ print. map solve. map (read::String->Double). tail. words
