module Test.Main where

import Prelude
import Effect (Effect)
import Test.Huffman.Alphabet (testAlphabet)
import Test.Huffman.Codewords (testCodewords)
import Test.Huffman.Encode (testEncode)
import Test.Huffman.Occurances (testOccurances)
import Test.Huffman.Symbol (testSymbol)
import Test.Huffman.Tree (testTree)
import Test.Utilities.Strings (testStrings)
import Test.Huffman.Weights (testWeights)

main :: Effect Unit
main = do
  testStrings
  testSymbol
  testAlphabet
  testOccurances
  testWeights
  testTree
  testCodewords
  testEncode
