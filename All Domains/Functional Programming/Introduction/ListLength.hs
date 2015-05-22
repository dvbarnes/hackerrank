len :: [a] -> Int
len lst = len' 0 lst 

len'::Int -> [a] -> Int
len' n [] = n
len' n (head:tail) = len' (n+1) tail
