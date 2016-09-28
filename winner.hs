winner :: a -> [a] -> [a]
winner 0 c = take (length c) [0, 0 ..]
winner times compets = zipWith (+) (simulate compets) (winner (times-1) compets)

simulate :: [a] -> [a]
simulate competitors@(x:xs)
