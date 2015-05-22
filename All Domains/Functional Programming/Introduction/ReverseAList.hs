rev::[a] -> [a]
rev l = rev' l []

rev'::[a]->[a] -> [a]
rev' (x:xs) arr = rev' xs (x:arr)
rev' [] list = list

main = do
   let sum = rev [1,3,5,6]
   print sum