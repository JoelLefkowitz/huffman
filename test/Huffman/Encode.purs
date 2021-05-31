module Test.Huffman.Encode where

import Prelude
import Effect (Effect)
import Huffman.Codewords (composeCodewords)
import Huffman.Encode (decodeWith, encodeWith)
import Test.Assert (assertEqual)

testEncode :: Effect Unit
testEncode = do
  assertEqual { actual: decoded, expected: text }
  where
  text = "A strongly-typed functional programming language that compiles to JavaScript"

  decoded = decodeWith encoded codewords

  encoded = encodeWith text codewords

  codewords = composeCodewords text
