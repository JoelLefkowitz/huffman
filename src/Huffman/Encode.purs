module Huffman.Encode where

import Prelude
import Data.Array (head)
import Data.Foldable (foldl)
import Data.Map (filter, keys, lookup)
import Data.Maybe (fromMaybe)
import Data.Set (toUnfoldable)
import Data.String (split)
import Data.String.CodeUnits (length)
import Data.String.Pattern (Pattern(..))
import Data.String.Unsafe (char)
import Data.String.Utils (startsWith)
import Huffman.Codewords (Codewords(..))
import Huffman.Symbol (Symbol(..), toString)
import Utilities.Strings (trimStart)

encodeWith :: String -> Codewords -> String
encodeWith str (Codewords codewords) = foldl replace "" symbols
  where
  symbols = Symbol <<< char <$> split (Pattern "") str

  replace acc x = acc <> (fromMaybe "" (lookup x codewords))

decodeWith :: String -> Codewords -> String
decodeWith str (Codewords codewords)
  | length str == 0 = ""
  | otherwise = toString symbol <> decodeWith remaining (Codewords codewords)
    where
    match = filter (\i -> startsWith i str) codewords

    symbol = fromMaybe (Symbol '_') <<< head <<< toUnfoldable $ keys match

    codeword = fromMaybe "" $ lookup symbol match

    remaining = trimStart codeword str
