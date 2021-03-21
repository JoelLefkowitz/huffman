module Test.Tree where

import Prelude

import Effect (Effect)
import Huffman.Occurances (countOccurances)
import Huffman.Symbol (Symbol(..))
import Huffman.Tree (HuffmanTree(..), fromWeights)
import Huffman.Weights (fromOccurances)
import Test.Assert (assertEqual)

tree :: String -> HuffmanTree
tree = fromWeights <<< fromOccurances <<< countOccurances

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
    { actual: tree ""
    , expected: Node [] 1.0
    }
  assertEqual
    { actual: tree "a"
    , expected: Node [Leaf (Symbol 'a') 1.0] 1.0
    }
  assertEqual
    { actual: tree "ab"
    , expected:
        Node
          [ Leaf (Symbol 'a') 0.5
          , Leaf (Symbol 'b') 0.5
          ]
          1.0
    }
  assertEqual
    { actual: tree "abcc"
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
  assertEqual
    { actual: tree "abcdefgh"
    , expected:
        Node [
          Node [
            Node [
              Leaf (Symbol 'c') 0.125,
              Leaf (Symbol 'd') 0.125
            ] 0.25,
            Node [
              Leaf (Symbol 'a') 0.125,
              Leaf (Symbol 'b') 0.125
            ] 0.25
          ] 0.5,
          Node [
            Node [
              Leaf (Symbol 'g') 0.125,
              Leaf (Symbol 'h') 0.125
            ] 0.25,
            Node [
              Leaf (Symbol 'e') 0.125,
              Leaf (Symbol 'f') 0.125
            ] 0.25
          ] 0.5
        ] 1.0
    }
