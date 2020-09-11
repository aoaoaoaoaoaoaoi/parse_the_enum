import qualified System.Directory as SD

notCDPD :: String -> Bool
notCDPD "."   = False
notCDPD ".."  = False
notCDPD other = True

main = do
    currentDirectory <- SD.getCurrentDirectory
    let targetDirectory = currentDirectory ++ "/enum"
    list <- SD.getDirectoryContents targetDirectory
    let filterdList = filter notCDPD list
    let files = map (targetDirectory ++) filterdList
    mapM_ putStrLn files