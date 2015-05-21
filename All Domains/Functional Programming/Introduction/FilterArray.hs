f :: Int -> [Int] -> [Int]
f n arr = filterList (cmp n) arr
cmp x y = x > y
filterList :: (a -> Bool) -> [a] -> [a]
filterList f (head:tail) = if f head then head : filterList f tail else filterList f tail
filterList _ [] = []


main = do 
    n <- readLn :: IO Int 
    inputdata <- getContents 
    let 
        numbers = map read (lines inputdata) :: [Int] 
    putStrLn . unlines $ (map show . f n) numbers
