module Wut where

import Prelude (Int, IO, putStrLn)
import GHC.Exts (IsList (..), IsString (..))

doneVsItems :: [Int] -> IO ()
doneVsItems [] = putStrLn "Done"
doneVsItems (p:ps) = putStrLn "Items"
