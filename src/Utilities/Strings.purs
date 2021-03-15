module Utilities.Strings where

import Prelude
import Data.Array (unsnoc)
import Data.Maybe (fromMaybe)
import Data.String (Pattern(..), joinWith, split)

removeLast :: String -> String -> String
removeLast pattern str = joinWith pattern parts.init <> parts.last
  where
  parts = fromMaybe { init: [], last: "" } (unsnoc $ split (Pattern pattern) str)
