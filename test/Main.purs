module Test.Main where

import Prelude
import Effect (Effect)
import Test.Data.Huffman.Alphabet (testAlphabet)
import Test.Data.Huffman.Codewords (testCodewords)
import Test.Data.Huffman.Encode (testEncode)
import Test.Data.Huffman.Occurances (testOccurances)
import Test.Data.Huffman.Symbol (testSymbol)
import Test.Data.Huffman.Tree (testTree)
import Test.Data.Huffman.Weights (testWeights)

main :: Effect Unit
main = do
  testSymbol
  testAlphabet
  testOccurances
  testWeights
  testTree
  testCodewords
  testEncode
