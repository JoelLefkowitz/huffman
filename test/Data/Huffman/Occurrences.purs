module Test.Data.Huffman.Occurrences where

import Prelude

import Data.Huffman.Letter (Letter(..))
import Data.Huffman.Occurrences (Occurrences(..), countOccurrences)
import Data.Map (empty, fromFoldable, singleton)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Test.Assert (assertEqual)

testOccurrences ∷ Effect Unit
testOccurrences = do
  assertEqual
    { actual: countOccurrences ""
    , expected: Occurrences empty
    }
  assertEqual
    { actual: countOccurrences "a"
    , expected: Occurrences $ singleton (Letter 'a') 1
    }
  assertEqual
    { actual: countOccurrences "ab"
    , expected:
        Occurrences
          $ fromFoldable
              [ Tuple (Letter 'a') 1
              , Tuple (Letter 'b') 1
              ]
    }
  assertEqual
    { actual: countOccurrences "abb"
    , expected:
        Occurrences
          $ fromFoldable
              [ Tuple (Letter 'a') 1
              , Tuple (Letter 'b') 2
              ]
    }
