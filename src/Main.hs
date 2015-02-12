module Main where

import Data.Yaml
import System.Environment
import qualified Data.ByteString as BS

main :: IO ()
main = do
  [path] <- getArgs
  contents <- BS.readFile path
  putStrLn $ either
    ("error: " ++)
    (show)
    $ (decodeEither contents :: Either String Value)


