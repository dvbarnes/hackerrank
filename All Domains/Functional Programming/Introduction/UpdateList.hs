--f arr = map abs arr --easy way
f arr = map myabs arr

myabs num = if num < 0 then num * (-1) else num

main = do
   inputdata <- getContents
   mapM_ putStrLn $ map show $ f $ map (read :: String -> Int) $ lines inputdata
