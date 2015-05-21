f :: [Int] -> [Int]
f lst = filterList 0 lst
filterList :: Int -> [Int] -> [Int]
filterList idx (head:tail) = if odd idx then head : filterList (idx+1) tail else filterList (idx+1) tail
filterList _ [] = []

main = do
   inputdata <- getContents
   mapM_ (putStrLn. show). f. map read. lines $ inputdata
