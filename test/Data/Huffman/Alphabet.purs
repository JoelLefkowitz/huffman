module Test.Data.Huffman.Alphabet where

import Prelude
import Data.Set (fromFoldable)
import Effect (Effect)
import Data.Huffman.Alphabet (Alphabet(..), fromString)
import Data.Huffman.Letter (Letter(..))
import Test.Assert (assertEqual)

testAlphabet :: Effect Unit
testAlphabet = do
  assertEqual
    { actual: fromString "abc"
    , expected: Alphabet $ fromFoldable [ Symbol 'a', Symbol 'b', Symbol 'c' ]
    }
  assertEqual
    { actual: fromString "aa"
    , expected: Alphabet $ fromFoldable [ Symbol 'a' ]
    }
  assertEqual
    { actual: show $ fromString "abc"
    , expected: "[a, b, c]"
    }
