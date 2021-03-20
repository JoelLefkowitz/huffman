module Test.Tree where

import Prelude
import Effect (Effect)
import Huffman.Occurances (countOccurances)
import Huffman.Symbol (Symbol(..))
import Huffman.Tree (HuffmanTree(..), fromWeights)
import Huffman.Weights (fromOccurances)
import Test.Assert (assertEqual)

testTree :: Effect Unit
testTree = do
  assertEqual
    { actual:
        show
          $ Node
              [ Leaf (Symbol 'a') 0.5
              , Leaf (Symbol 'b') 0.5
              ]
              1.0
    , expected: "[a: 0.5, b: 0.5]: 1.0"
    }
  assertEqual
    { actual: fromWeights <<< fromOccurances <<< countOccurances $ "a"
    , expected: Leaf (Symbol 'a') 1.0
    }
  assertEqual
    { actual: fromWeights <<< fromOccurances <<< countOccurances $ "ab"
    , expected:
        Node
          [ Leaf (Symbol 'a') 0.5
          , Leaf (Symbol 'b') 0.5
          ]
          1.0
    }
  assertEqual
    { actual: fromWeights <<< fromOccurances <<< countOccurances $ "abcc"
    , expected:
        Node
          [ Node
              [ Leaf (Symbol 'a') 0.25
              , Leaf (Symbol 'b') 0.25
              ]
              0.5
          , Leaf (Symbol 'c') 0.5
          ]
          1.0
    }
