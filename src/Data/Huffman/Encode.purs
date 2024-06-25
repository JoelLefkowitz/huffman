module Data.Huffman.Encode where

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
import Data.Huffman.Codewords (Codewords(..))
import Data.Huffman.Letter (Letter(..), toString)
import Data.String.Repr (trimStart)

encodeWith :: String -> Codewords -> String
encodeWith s (Codewords codewords) = foldl replace "" symbols
  where
  symbols = Symbol <<< char <$> split (Pattern "") s

  replace acc x = acc <> (fromMaybe "" (lookup x codewords))

decodeWith :: String -> Codewords -> String
decodeWith s (Codewords codewords)
  | length s == 0 = ""
  | otherwise = toString symbol <> decodeWith remaining (Codewords codewords)
    where
    match = filter (\i -> startsWith i s) codewords

    symbol = fromMaybe (Symbol '_') <<< head <<< toUnfoldable $ keys match

    codeword = fromMaybe "" $ lookup symbol match

    remaining = trimStart codeword s
