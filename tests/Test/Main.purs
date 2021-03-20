module Test.Main where

import Prelude

import Effect (Effect)
import Test.Alphabet (testAlphabet)
import Test.Codewords (testCodewords)
import Test.Decode (testDecode)
import Test.Encode (testEncode)
import Test.Occurances (testOccurances)
import Test.Symbol (testSymbol)
import Test.Utilities (testUtilities)
import Test.Weights (testWeights)

main :: Effect Unit
main = do
  testUtilities
  testSymbol
  testAlphabet
  testOccurances
  testWeights
  testCodewords
  testEncode
  testDecode
