module Test.Huffman.Symbol where

import Prelude
import Effect (Effect)
import Huffman.Symbol (Symbol(..))
import Test.Assert (assertEqual)

testSymbol :: Effect Unit
testSymbol = do
  assertEqual
    { actual: show $ Symbol 'a'
    , expected: "a"
    }
