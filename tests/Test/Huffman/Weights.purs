module Test.Huffman.Weights where

import Prelude
import Data.Map (fromFoldable)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Huffman.Occurances (countOccurances)
import Huffman.Symbol (Symbol(..))
import Huffman.Weights (Weights(..), fromOccurances)
import Test.Assert (assertEqual)

weights :: String -> Weights
weights = fromOccurances <<< countOccurances

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
