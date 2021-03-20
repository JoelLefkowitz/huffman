module Test.Codewords where

import Prelude

import Data.Map (fromFoldable)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Huffman.Codewords (fromWeights, Codewords(..))
import Huffman.Occurances (countOccurances)
import Huffman.Symbol (Symbol(..))
import Huffman.Weights (fromOccurances)
import Test.Assert (assertEqual)

testCodewords :: Effect Unit
testCodewords = do
  assertEqual
    { actual: fromWeights <<< fromOccurances <<< countOccurances $ "abcc"
    , expected: Codewords $ fromFoldable [
        Tuple (Symbol 'a') "10",
        Tuple (Symbol 'b') "11",
        Tuple (Symbol 'c') "0"
      ]
    }