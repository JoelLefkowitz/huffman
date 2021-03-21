module Test.Codewords where

import Prelude

import Data.Map (empty, fromFoldable, singleton)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Huffman.Codewords (Codewords(..), fromHuffmanTree)
import Huffman.Occurances (countOccurances)
import Huffman.Symbol (Symbol(..))
import Huffman.Tree (fromWeights)
import Huffman.Weights (fromOccurances)
import Test.Assert (assertEqual)

codewords :: String -> Codewords
codewords = 
    fromHuffmanTree
    <<< fromWeights
    <<< fromOccurances 
    <<< countOccurances

testCodewords :: Effect Unit
testCodewords = do
  assertEqual
    { actual: codewords ""
    , expected: Codewords empty
    }
  assertEqual
    { actual: codewords "a"
    , expected: Codewords $ singleton (Symbol 'a') "0" 
    }
  assertEqual
    { actual: codewords "ab"
    , expected: Codewords <<< fromFoldable $ [
       Tuple (Symbol 'a') "0",
       Tuple (Symbol 'b') "1"
      ]
    }
  assertEqual
    { actual: codewords "abcd"
      , expected: Codewords <<< fromFoldable $ [
       Tuple (Symbol 'a') "00",
       Tuple (Symbol 'b') "01",
       Tuple (Symbol 'c') "10",
       Tuple (Symbol 'd') "11"
      ]
    }
  assertEqual
    { actual: codewords "abcc"
      , expected: Codewords <<< fromFoldable $ [
       Tuple (Symbol 'a') "10",
       Tuple (Symbol 'b') "11",
       Tuple (Symbol 'c') "0"
      ]
    }
  
