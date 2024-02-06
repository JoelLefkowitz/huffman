module Test.Data.Huffman.Weights where

import Prelude
import Data.Map (fromFoldable)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Data.Huffman.Occurrences (countOccurrences)
import Data.Huffman.Symbol (Symbol(..))
import Data.Huffman.Weights (Weights(..), fromOccurrences)
import Test.Assert (assertEqual)

weights :: String -> Weights
weights = fromOccurrences <<< countOccurrences

testWeights :: Effect Unit
testWeights = do
  assertEqual
    { actual: weights $ "ab"
    , expected:
        Weights
          $ fromFoldable
              [ Tuple (Symbol 'a') 0.5
              , Tuple (Symbol 'b') 0.5
              ]
    }
