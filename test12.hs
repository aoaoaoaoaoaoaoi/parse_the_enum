import qualified Data.List as L

requiredStr :: String -> Bool
requiredStr x
    | L.isInfixOf "class" x = True
    | L.isInfixOf "//" x && L.isInfixOf "summary" x == False = True
    | L.isInfixOf "," x = True
    | otherwise = False

main = do
    str <- readFile "./enum/test.cs"
    let splitedStr = lines str
    let dropTopStr = dropWhile 
    let filterdList = filter requiredStr splitedStr
    let (classComment, classPart)  = break (\str -> L.isInfixOf "class" str) filterdList
    print classComment
    print classPart