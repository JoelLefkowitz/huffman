module Utilities.Strings where

import Prelude

import Data.Foldable (class Foldable, foldl)
import Data.Maybe (fromMaybe)
import Data.String.CodePoints (length)
import Data.String.CodeUnits (slice)
import Data.String.Utils (endsWith)

trimEnd :: String -> String -> String
trimEnd x str
  | endsWith x str = fromMaybe str $ slice 0 (length str - length x) str
  | otherwise      = str

joinWith :: forall a f. Show a => Foldable f => String -> f a -> String
joinWith delimeter foldable = trimEnd delimeter joined
  where joined = foldl (\acc x -> acc <> show x <> delimeter) "" foldable

