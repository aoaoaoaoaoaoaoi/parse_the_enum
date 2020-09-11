split :: Eq a => a -> [a] -> [[a]]
split x y = func x y [[]]
    where
        func x [] z = reverse $ map (reverse) z
        func x (y:ys) (z:zs) = if y == x then 
            func x ys ([]:(z:zs)) 
        else 
            func x ys ((y:z):zs)

main = do
    str <- readFile "./enum/test.cs"
    print $ split '\n' str