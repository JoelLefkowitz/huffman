module Test.Data.Huffman.Occurrences where

import Prelude
import Data.Map (empty, singleton, fromFoldable)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Data.Huffman.Occurrences (Occurrences(..), countOccurrences)
import Data.Huffman.Symbol (Symbol(..))
import Test.Assert (assertEqual)

testOccurrences :: Effect Unit
testOccurrences = do
  assertEqual
    { actual: countOccurrences ""
    , expected: Occurrences empty
    }
  assertEqual
    { actual: countOccurrences "a"
    , expected: Occurrences $ singleton (Symbol 'a') 1
    }
  assertEqual
    { actual: countOccurrences "ab"
    , expected:
        Occurrences
          $ fromFoldable
              [ Tuple (Symbol 'a') 1
              , Tuple (Symbol 'b') 1
              ]
    }
  assertEqual
    { actual: countOccurrences "abb"
    , expected:
        Occurrences
          $ fromFoldable
              [ Tuple (Symbol 'a') 1
              , Tuple (Symbol 'b') 2
              ]
    }
