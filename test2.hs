import qualified System.Directory as SD

main = do
    str <- SD.getCurrentDirectory
    print str