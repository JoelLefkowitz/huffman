module Test.Main where

import Prelude
import Effect (Effect)
import Test.Alphabet (testAlphabet)
import Test.Symbol (testSymbol)

main :: Effect Unit
main = do
  testSymbol
  testAlphabet
