module Test.Data.Huffman.Letter where

import Prelude

import Data.Huffman.Letter (Letter(..))
import Effect (Effect)
import Test.Assert (assertEqual)

testLetter ∷ Effect Unit
testLetter = do
  assertEqual
    { actual: show $ Letter 'a'
    , expected: "a"
    }
