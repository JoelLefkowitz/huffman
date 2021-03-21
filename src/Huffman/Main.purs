module Huffman.Main where

import Prelude
import Data.Foldable (foldl)
import Data.Map (lookup)
import Data.Maybe (fromMaybe)
import Data.String (split)
import Data.String.Pattern (Pattern(..))
import Data.String.Unsafe (char)
import Huffman.Codewords (fromHuffmanTree, Codewords(..))
import Huffman.Occurances (countOccurances)
import Huffman.Symbol (Symbol(..))
import Huffman.Tree (fromWeights)
import Huffman.Weights (fromOccurances)

encode :: String -> String
encode str = encodeWith str (composeCodewords str)

composeCodewords :: String -> Codewords
composeCodewords =
  fromHuffmanTree
    <<< fromWeights
    <<< fromOccurances
    <<< countOccurances

encodeWith :: String -> Codewords -> String
encodeWith str (Codewords codewords) = foldl foo "" symbols
  where
  symbols = Symbol <<< char <$> split (Pattern "") str

  foo acc x = acc <> (fromMaybe "" (lookup x codewords))

decodeWith :: String -> Codewords -> String
decodeWith str (Codewords codewords) = ""
