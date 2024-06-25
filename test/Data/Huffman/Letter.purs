module Test.Data.Huffman.Letter where

import Prelude
import Effect (Effect)
import Data.Huffman.Letter (Letter(..))
import Test.Assert (assertEqual)

testLetter :: Effect Unit
testLetter = do
  assertEqual
    { actual: show $ Symbol 'a'
    , expected: "a"
    }
