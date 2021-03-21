module Test.Main where

import Prelude

import Effect (Effect)
import Huffman.Encode (composeCodewords, decodeWith, encode, encodeWith)
import Huffman.Occurances (countOccurances)
import Huffman.Symbol (Symbol(..))
import Huffman.Tree (HuffmanTree(..), fromWeights)
import Huffman.Weights (fromOccurances)
import Test.Alphabet (testAlphabet)
import Test.Assert (assertEqual)
import Test.Codewords (testCodewords)
import Test.Decode (testDecode)
import Test.Encode (testEncode)
import Test.Occurances (testOccurances)
import Test.Symbol (testSymbol)
import Test.Tree (testTree)
import Test.Utilities (testUtilities)
import Test.Weights (testWeights)


main :: Effect Unit
main = do
  testUtilities
  testSymbol
  testAlphabet
  testOccurances
  testWeights
  testTree
  testCodewords
  testEncode
  testDecode

  -- composeCodewords
  -- decodeWith
  -- encode
  -- encodeWith

  -- assertEqual
  --   { actual: decode <<< encode "abc"
  --   , expected: "abc"
  --   }
