module Test.Data.Huffman.Alphabet where

import Prelude

import Data.Huffman.Alphabet (Alphabet(..), fromString)
import Data.Huffman.Letter (Letter(..))
import Data.Set (fromFoldable)
import Effect (Effect)
import Test.Assert (assertEqual)

testAlphabet ∷ Effect Unit
testAlphabet = do
  assertEqual
    { actual: fromString "abc"
    , expected: Alphabet $ fromFoldable [ Letter 'a', Letter 'b', Letter 'c' ]
    }
  assertEqual
    { actual: fromString "aa"
    , expected: Alphabet $ fromFoldable [ Letter 'a' ]
    }

