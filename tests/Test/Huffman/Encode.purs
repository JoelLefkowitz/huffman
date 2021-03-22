module Test.Huffman.Encode where

import Prelude

import Data.Map (empty, singleton)
import Effect (Effect)
import Huffman.Codewords (Codewords(..), composeCodewords)
import Huffman.Encode (decodeWith, encodeWith)
import Test.Assert (assertEqual)

testEncode :: Effect Unit
testEncode = do
  -- assertEqual { actual: decoded, expected: text }
  assertEqual { actual: encoded, expected: "" }
  where
  text = "A strongly-typed functional programming language that compiles to JavaScript"

  decoded = decodeWith encoded codewords

  encoded = encodeWith text codewords

  codewords = composeCodewords text
