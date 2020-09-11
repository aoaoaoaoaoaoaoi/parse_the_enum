import qualified System.Directory as SD

main = do
    currentDirectory <- SD.getCurrentDirectory
    let targetDirectory = currentDirectory ++ "/enum"
    print targetDirectory