import qualified Data.List as L

requiredStr :: String -> Bool
requiredStr x
    | L.isInfixOf "class" x = True
    | L.isInfixOf "//" x && L.isInfixOf "summary" x == False = True
    | otherwise = False

main = do
    str <- readFile "./enum/test.cs"
    let splitedStr = lines str
    let filterdList = filter requiredStr splitedStr
    mapM_ putStrLn filterdList