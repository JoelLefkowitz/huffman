module Data.Huffman.Letter where

import Prelude
import Prim

import Data.String.CodeUnits (singleton)

newtype Letter = Letter Char

derive instance eqLetter ∷ Eq Letter
derive instance ordLetter ∷ Ord Letter

instance showLetter ∷ Show Letter where
  show (Letter x) = singleton x
