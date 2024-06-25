module Data.Huffman.Letter where

import Prelude
import Data.String.CodeUnits (singleton)

newtype Letter
  = Symbol Char

instance eqLetter :: Eq Letter where
  eq (Symbol x) (Symbol y) = eq x y

instance ordLetter :: Ord Letter where
  compare (Symbol x) (Symbol y) = compare x y

instance showLetter :: Show Letter where
  show (Symbol x) = singleton x

toString :: Letter -> String
toString (Symbol s) = singleton s
