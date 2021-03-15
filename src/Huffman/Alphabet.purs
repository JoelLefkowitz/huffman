module Huffman.Alphabet where

import Prelude
import Data.Foldable (foldl)
import Data.Set (Set, fromFoldable)
import Data.String (Pattern(..), split)
import Data.String.CodeUnits (singleton)
import Data.String.Unsafe (char)
import Huffman.Symbol (Symbol(..))
import Utilities.Strings (removeLast)

newtype Alphabet
  = Alphabet (Set Symbol)

instance eqAlphabet :: Eq Alphabet where
  eq (Alphabet x) (Alphabet y) = x == y

instance showAlphabet :: Show Alphabet where
  show (Alphabet set) = removeLast delimeter $ "Alphabet: [" <> symbols <> "]"
    where
    symbols = foldl joinChar "" set

    joinChar acc (Symbol char) = acc <> singleton char <> delimeter

    delimeter = ", "

fromString :: String -> Alphabet
fromString str =
  Alphabet
    $ fromFoldable do
        x <- split (Pattern "") str
        pure $ Symbol (char x)
