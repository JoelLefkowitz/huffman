module Test.Occurances where

import Prelude
import Data.Map (empty, singleton, fromFoldable)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Huffman.Occurances (Occurances(..), countOccurances)
import Huffman.Symbol (Symbol(..))
import Test.Assert (assertEqual)

testOccurances :: Effect Unit
testOccurances = do
  assertEqual
    { actual: countOccurances ""
    , expected: Occurances empty
    }
  assertEqual
    { actual: countOccurances "a"
    , expected: Occurances $ singleton (Symbol 'a') 1
    }
  assertEqual
    { actual: countOccurances "ab"
    , expected:
        Occurances
          $ fromFoldable
              [ Tuple (Symbol 'a') 1
              , Tuple (Symbol 'b') 1
              ]
    }
  assertEqual
    { actual: countOccurances "abb"
    , expected:
        Occurances
          $ fromFoldable
              [ Tuple (Symbol 'a') 1
              , Tuple (Symbol 'b') 2
              ]
    }
